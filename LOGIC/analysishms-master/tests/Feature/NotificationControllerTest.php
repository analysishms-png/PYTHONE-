<?php

namespace Tests\Feature;

use App\Jobs\SendCustomNotificationJob;
use App\Models\User;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Queue;
use Illuminate\Support\Facades\Schema;
use Tests\TestCase;

class NotificationControllerTest extends TestCase
{
    protected function setUp(): void
    {
        parent::setUp();

        Config::set('database.default', 'sqlite');
        Config::set('database.connections.sqlite', [
            'driver' => 'sqlite',
            'database' => ':memory:',
            'prefix' => '',
            'foreign_key_constraints' => false,
        ]);
        DB::purge('sqlite');
        DB::setDefaultConnection('sqlite');

        Schema::create('users', function ($table): void {
            $table->id();
            $table->string('name');
            $table->string('u_name');
            $table->string('propertyid');
            $table->string('department')->nullable();
            $table->string('email')->nullable();
            $table->integer('status')->default(1);
            $table->text('fcm_token')->nullable();
            $table->timestamps();
        });
        Schema::create('depart', function ($table): void {
            $table->id();
            $table->string('propertyid');
            $table->string('dcode');
            $table->string('name');
        });
        Schema::create('menuhelp', function ($table): void {
            $table->id();
            $table->string('propertyid');
            $table->string('username');
            $table->string('code');
            $table->integer('view')->default(0);
            $table->integer('ins')->default(0);
        });
        Schema::create('notificationmaster', function ($table): void {
            $table->id();
            $table->string('propertyid');
            $table->string('route');
            $table->string('module');
            $table->string('dcode');
            $table->text('task');
            $table->integer('status')->default(1);
            $table->dateTime('created_at')->nullable();
            $table->string('u_name')->nullable();
            $table->string('u_ae')->nullable();
        });
    }

    protected function tearDown(): void
    {
        Schema::dropIfExists('notificationmaster');
        Schema::dropIfExists('menuhelp');
        Schema::dropIfExists('depart');
        Schema::dropIfExists('users');
        parent::tearDown();
    }

    public function test_submission_commits_master_and_dispatches_job_with_validated_users(): void
    {
        /** @var User $admin */
        $admin = User::query()->create([
            'id' => 1,
            'name' => 'Admin',
            'u_name' => 'admin',
            'propertyid' => '103',
            'department' => 'ADMIN',
            'status' => 1,
        ]);
        User::query()->create([
            'id' => 2,
            'name' => 'Sagar',
            'u_name' => 'sagar',
            'propertyid' => '103',
            'department' => 'FOM103',
            'status' => 1,
            'fcm_token' => 'token-sagar',
        ]);
        User::query()->create([
            'id' => 3,
            'name' => 'Other property',
            'u_name' => 'other',
            'propertyid' => '999',
            'department' => 'FOM103',
            'status' => 1,
            'fcm_token' => 'token-other',
        ]);
        DB::table('depart')->insert(['propertyid' => '103', 'dcode' => 'FOM103', 'name' => 'Front Office']);
        DB::table('menuhelp')->insert([
            'propertyid' => '103', 'username' => 'admin', 'code' => '122011', 'view' => 1, 'ins' => 1,
        ]);
        Queue::fake();

        $response = $this->actingAs($admin)->postJson(route('notification.store'), [
            'target' => 'departments',
            'departments' => ['FOM103'],
            'user_ids' => [2, 3],
            'route' => 'dashboard',
            'module' => 'dashboard',
            'task' => 'Queued test notification',
        ]);

        $response->assertStatus(422);
        Queue::assertNothingPushed();
        $this->assertDatabaseCount('notificationmaster', 0);
    }

    public function test_valid_submission_dispatches_after_master_commit(): void
    {
        /** @var User $admin */
        $admin = User::query()->create([
            'id' => 1, 'name' => 'Admin', 'u_name' => 'admin', 'propertyid' => '103',
            'department' => 'ADMIN', 'status' => 1,
        ]);
        User::query()->create([
            'id' => 2, 'name' => 'Sagar', 'u_name' => 'sagar', 'propertyid' => '103',
            'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-sagar',
        ]);
        DB::table('depart')->insert(['propertyid' => '103', 'dcode' => 'FOM103', 'name' => 'Front Office']);
        DB::table('menuhelp')->insert([
            'propertyid' => '103', 'username' => 'admin', 'code' => '122011', 'view' => 1, 'ins' => 1,
        ]);
        Queue::fake();

        $response = $this->actingAs($admin)->postJson(route('notification.store'), [
            'target' => 'departments', 'departments' => ['FOM103'], 'user_ids' => [2],
            'route' => 'dashboard', 'module' => 'dashboard', 'task' => 'Queued test notification',
        ]);

        $response->assertOk()->assertJsonPath('data.recipients', 1);
        $notificationId = DB::table('notificationmaster')->value('id');
        Queue::assertPushed(SendCustomNotificationJob::class, function (SendCustomNotificationJob $job) use ($notificationId): bool {
            return $job->notificationId === (int) $notificationId && $job->userIds === [2];
        });
    }

    public function test_multiple_departments_dispatch_one_job_per_master_and_lock_duplicates(): void
    {
        /** @var User $admin */
        $admin = User::query()->create([
            'id' => 1, 'name' => 'Admin', 'u_name' => 'admin', 'propertyid' => '103',
            'department' => 'ADMIN', 'status' => 1,
        ]);
        User::query()->create([
            'id' => 2, 'name' => 'Sagar', 'u_name' => 'sagar', 'propertyid' => '103',
            'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-sagar',
        ]);
        User::query()->create([
            'id' => 3, 'name' => 'Rahul', 'u_name' => 'rahul', 'propertyid' => '103',
            'department' => 'HK103', 'status' => 1, 'fcm_token' => 'token-rahul',
        ]);
        DB::table('depart')->insert([
            ['propertyid' => '103', 'dcode' => 'FOM103', 'name' => 'Front Office'],
            ['propertyid' => '103', 'dcode' => 'HK103', 'name' => 'Housekeeping'],
        ]);
        DB::table('menuhelp')->insert([
            'propertyid' => '103', 'username' => 'admin', 'code' => '122011', 'view' => 1, 'ins' => 1,
        ]);
        Queue::fake();
        $payload = [
            'target' => 'departments', 'departments' => ['FOM103', 'HK103'], 'user_ids' => [2, 3],
            'route' => 'dashboard', 'module' => 'dashboard', 'task' => 'Multi-department notification',
        ];

        $first = $this->actingAs($admin)->postJson(route('notification.store'), $payload);
        $second = $this->actingAs($admin)->postJson(route('notification.store'), $payload);

        $first->assertOk();
        $second->assertStatus(409);
        $this->assertDatabaseCount('notificationmaster', 2);
        Queue::assertPushed(SendCustomNotificationJob::class, 2);
        Queue::assertPushed(SendCustomNotificationJob::class, fn (SendCustomNotificationJob $job): bool => $job->userIds === [2]);
        Queue::assertPushed(SendCustomNotificationJob::class, fn (SendCustomNotificationJob $job): bool => $job->userIds === [3]);
    }
}
