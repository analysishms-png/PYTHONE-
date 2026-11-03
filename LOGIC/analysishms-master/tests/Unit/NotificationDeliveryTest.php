<?php

namespace Tests\Unit;

use App\Models\NotificationDelivery;
use App\Services\FcmNotificationService;
use App\Services\NotificationDeliveryTrackingService;
use Illuminate\Http\Client\Request as HttpRequest;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Schema;
use Tests\TestCase;

class NotificationDeliveryTest extends TestCase
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
            $table->string('propertyid')->nullable();
            $table->string('department')->nullable();
            $table->integer('status')->default(1);
            $table->text('fcm_token')->nullable();
            $table->timestamps();
        });
        Schema::create('notification_deliveries', function ($table): void {
            $table->id();
            $table->unsignedBigInteger('notification_id');
            $table->string('propertyid');
            $table->unsignedBigInteger('user_id');
            $table->text('fcm_token')->nullable();
            $table->string('state')->default('sent');
            $table->dateTime('sent_at')->nullable();
            $table->dateTime('delivered_at')->nullable();
            $table->dateTime('seen_at')->nullable();
            $table->dateTime('opened_at')->nullable();
            $table->dateTime('failed_at')->nullable();
            $table->text('error_message')->nullable();
            $table->timestamps();
            $table->unique(['notification_id', 'user_id']);
        });

        Config::set('firebase.project_id', 'analysis-hms-test');
        Config::set('firebase.client_email', 'test@example.iam.gserviceaccount.com');
        Config::set('firebase.private_key', <<<'KEY'
    -----BEGIN PRIVATE KEY-----
    MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDdJD0Y/6IV6tX2
    B0qyBX/6CChTwoD9ggqOkOhNtUKdSvlGAiaC78qfEkVNyykSy+wL5C9WzJzhgZl+
    4gLXVZkMKne6GENsMWeGySy8sW0QAHtR5B8m7Qfe27fYQEBfVCrmNNoj40Tdmdz3
    zavtEWh9THMFGu8Atdi0IdLLDdxGDKcBaMvfdleFUv4Tmbx5BIXA6tbQlPB1ZK1J
    O3c1gii5kR+vonRESn6WIDs0Ww73ICbOQyMk2lGoKi9lKqL8NlV7ZyxStbfx49dk
    Wky1JZZYU5fiV1JGgK0kB2aOOV4DjLLNlQndxIIi9py99dhoDA2vM877vNHwC8b9
    c8/d5iMFAgMBAAECggEANIqOpajfBtwT1++llKRv4qUbh8MXyKOkBHlzaDsfx6Vv
    km2iXsvAVYkOxEv3x0qCG9UsVjApOf8DzDzAtg7VXSmd5q4rHsKiOUkFAxQYuIuU
    wUE1EZeRniaQCKZDZSLnSmjWR16RFyGeeZX5Oks/iz2lulnK3V1XTn0Wyz3Qzydz
    QAAjklIdf61aHpWV/6lmdbjL3dslK0Xb12Aw1S1QGWpilmEFr054FY4Ygp90zvdn
    sEngqFZtblxVAN9C5cXCxqNbXYo5WhYyJXXAhsxKhTRNwgJQkATlXPzXlNEz02Uz
    gV1u62ZTTz+/gY84ymzVYMcHm/4URLWucZMTrTZCwQKBgQD4TG2nImspzv+l2+3z
    A8RqLP32MIJsxfMY1h641T51RsC0Xob6yMjhwwC50Ux7kFnvX6UOpYp7pci/48zS
    gKUbemh8OpinmNfantgzV9EcxfimpmRLqmfJi6RIqixX3+Mekyfad5lVZ9b5dcHY
    3GIu1bETHUT+eGf3t7qcIZdZ0QKBgQDkACzJDo/5WgNH+Zho+q10IEa/7iIVXE1P
    PxOZYM3669O5SHdDOOsflAD5RyyB5sdsIUVEhHTZGok7mSsdXAGsOmduqVNabNDt
    mjA1I/iQwvUK8UYf8IecltrUVxdBi+39q5sqWsEztXeNCFXDDJULEL7AwGcmmHkY
    CQPwHBfO9QKBgClt3zHu7UCJmGBdROOycjhhD3LffzOVB83SFEg01HoO9yJhT1ZS
    4CnDNsDKal+Ho2nsZIcAGg4tiER0Rv2sl1/xWbO4tzXnq8R/koVmlq6dXbK4uq1h
    XnXjheLV+hYjdiro1NJ/+Cam79ipzFFZ3EwCPcx5qsRm5LoRfuKEPFOxAoGAM8RW
    ZtAHoHXviMgC8tL3zwYFCk7nLjJm2zdXG9v+6Jni2I67hWfG+sR/9BlU4amkXciw
    EX6BiUmdHwsH3wKk3pXkJhwL8NwEE+6OQ4KHTVb2jCV75oSWRdd6l/uuLBO5VX9B
    G7y/YR4yprLdxgt1S63hoaINyZWU6QAjBMFcJoECgYA3vBeB9S8GpHEvPKcHU4Hq
    bqPtDGjE4guuDFzobPI9Xf7i8hrK6s3J9FSdb/n6i/qzu5Ac56Gqa6wUHXzv5H/G
    adiLKTdIRhp3HdZRipcBvmC2uDszeScNVTqmiqX9LYKE+faUwSiQWPpPnc7C8zfn
    MKRrSkd4aiqLCUdl45s63A==
    -----END PRIVATE KEY-----
    KEY);
        Cache::forget('firebase.messaging.access_token');
    }

    protected function tearDown(): void
    {
        Schema::dropIfExists('notification_deliveries');
        Schema::dropIfExists('users');
        parent::tearDown();
    }

    public function test_matching_recipients_create_idempotent_sent_records(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-a'],
            ['id' => 2, 'propertyid' => '103', 'department' => 'OTHER', 'status' => 1, 'fcm_token' => 'token-b'],
            ['id' => 3, 'propertyid' => '999', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-c'],
            ['id' => 4, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 0, 'fcm_token' => 'token-d'],
            ['id' => 5, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => ''],
        ]);
        $this->fakeFirebase(200);
        $service = app(FcmNotificationService::class);
        $notification = [
            'id' => 15,
            'propertyid' => '103',
            'route' => 'dashboard',
            'module' => 'dashboard',
            'dcode' => 'FOM103',
            'task' => 'Test notification',
        ];

        $first = $service->sendNotificationMaster($notification);
        $second = $service->sendNotificationMaster($notification);

        $this->assertSame(['matched' => 1, 'sent' => 1, 'failed' => 0, 'invalid_tokens' => 0, 'skipped' => 0], $first);
        $this->assertSame(1, $second['matched']);
        $this->assertSame(1, $second['skipped']);
        $this->assertSame(0, $second['sent']);
        $this->assertSame(1, NotificationDelivery::query()->count());
        $this->assertSame('sent', NotificationDelivery::query()->first()->state);
        Http::assertSentCount(2);
    }

    public function test_failed_and_invalid_token_are_tracked_without_stopping_batch(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'bad-token'],
            ['id' => 2, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'good-token'],
        ]);
        $this->fakeFirebase(500, true);
        $result = app(FcmNotificationService::class)->sendNotificationMaster([
            'id' => 16,
            'propertyid' => '103',
            'dcode' => 'FOM103',
            'module' => 'Test',
            'task' => 'Failure test',
        ]);

        $this->assertSame(2, $result['matched']);
        $this->assertSame(2, $result['failed']);
        $this->assertSame(0, $result['skipped']);
        $this->assertSame(2, $result['invalid_tokens']);
        $this->assertSame('failed', NotificationDelivery::query()->where('user_id', 1)->value('state'));
        $this->assertNull(DB::table('users')->where('id', 1)->value('fcm_token'));
    }

    public function test_selected_user_ids_are_revalidated_against_department_scope(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-a'],
            ['id' => 2, 'propertyid' => '103', 'department' => 'HK103', 'status' => 1, 'fcm_token' => 'token-b'],
        ]);
        $this->fakeFirebase(200);

        $result = app(FcmNotificationService::class)->sendNotificationMasterToUsers([
            'id' => 17,
            'propertyid' => '103',
            'dcode' => 'FOM103',
            'module' => 'Test',
            'task' => 'Scoped test',
        ], [2]);

        $this->assertSame(0, $result['matched']);
        $this->assertSame(0, NotificationDelivery::query()->count());
    }

    public function test_acknowledgements_are_secure_idempotent_and_monotonic(): void
    {
        NotificationDelivery::query()->create([
            'notification_id' => 15,
            'propertyid' => '103',
            'user_id' => 1,
            'fcm_token' => 'token-a',
            'state' => 'sent',
        ]);
        $tracking = app(NotificationDeliveryTrackingService::class);

        $tracking->acknowledge(15, 1, 'delivered');
        $tracking->acknowledge(15, 1, 'delivered');
        $tracking->acknowledge(15, 1, 'seen');
        $tracking->acknowledge(15, 1, 'opened');
        $tracking->acknowledge(15, 1, 'seen');

        $delivery = NotificationDelivery::query()->first();
        $this->assertSame('opened', $delivery->state);
        $this->assertNotNull($delivery->delivered_at);
        $this->assertNotNull($delivery->seen_at);
        $this->assertNotNull($delivery->opened_at);
        $this->expectException(\Illuminate\Database\Eloquent\ModelNotFoundException::class);
        $tracking->acknowledge(15, 2, 'delivered');
    }

    public function test_sent_delivered_seen_and_opened_deliveries_are_never_resent(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-a'],
        ]);
        $notificationIds = ['sent' => 401, 'delivered' => 402, 'seen' => 403, 'opened' => 404];
        foreach ($notificationIds as $state => $notificationId) {
            NotificationDelivery::query()->create([
            'notification_id' => $notificationId,
                'propertyid' => '103',
                'user_id' => 1,
                'fcm_token' => 'token-a',
                'state' => $state,
            ]);
        }
        $this->fakeFirebase(200);

        foreach ($notificationIds as $state => $notificationId) {
            $result = app(FcmNotificationService::class)->sendNotificationMaster([
            'id' => $notificationId,
                'propertyid' => '103',
                'dcode' => 'FOM103',
                'module' => 'Test',
                'task' => 'No resend test',
            ]);
            $this->assertSame(1, $result['skipped']);
            $this->assertSame(0, $result['sent']);
        }

        Http::assertSentCount(0);
    }

    public function test_failed_delivery_is_retried_and_becomes_sent(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-a'],
        ]);
        NotificationDelivery::query()->create([
            'notification_id' => 200,
            'propertyid' => '103',
            'user_id' => 1,
            'fcm_token' => 'token-a',
            'state' => 'failed',
            'error_message' => 'temporary failure',
        ]);
        $this->fakeFirebase(200);

        $result = app(FcmNotificationService::class)->sendNotificationMaster([
            'id' => 200,
            'propertyid' => '103',
            'dcode' => 'FOM103',
            'module' => 'Test',
            'task' => 'Retry test',
        ]);

        $this->assertSame(1, $result['sent']);
        $this->assertSame('sent', NotificationDelivery::query()->where('notification_id', 200)->value('state'));
        $this->assertSame(1, NotificationDelivery::query()->count());
    }

    public function test_two_distinct_notifications_for_one_user_are_each_sent_once(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-a'],
        ]);
        $this->fakeFirebase(200);
        $service = app(FcmNotificationService::class);

        foreach ([301, 302] as $notificationId) {
            $notification = [
                'id' => $notificationId,
                'propertyid' => '103',
                'dcode' => 'FOM103',
                'module' => 'Test',
                'task' => 'Distinct notification',
            ];
            $service->sendNotificationMaster($notification);
            $service->sendNotificationMaster($notification);
        }

        $this->assertSame(2, NotificationDelivery::query()->count());
        $this->assertSame(2, NotificationDelivery::query()->where('state', 'sent')->count());
    }

    public function test_fcm_payload_includes_unique_collapse_key_ttl_and_notification_id(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-a'],
        ]);
        $sentMessages = [];
        Http::fake(function (HttpRequest $request) use (&$sentMessages) {
            if ($request->url() === 'https://oauth2.googleapis.com/token') {
                return Http::response(['access_token' => 'test-access-token'], 200);
            }
            if (str_contains($request->url(), 'fcm.googleapis.com')) {
                $body = json_decode($request->body(), true);
                $sentMessages[] = $body['message'] ?? [];
            }
            return Http::response(['name' => 'projects/analysis-hms-test/messages/test'], 200);
        });
        Cache::forget('firebase.messaging.access_token');

        $service = app(FcmNotificationService::class);
        $service->sendNotificationMaster([
            'id' => 405,
            'propertyid' => '103',
            'route' => 'dashboard',
            'module' => 'dashboard',
            'dcode' => 'FOM103',
            'task' => 'FCM payload test',
        ]);

        $this->assertCount(1, $sentMessages);
        $message = $sentMessages[0];
        $this->assertSame('msg_405', $message['android']['collapse_key']);
        $this->assertSame('high', $message['android']['priority']);
        $this->assertSame('2419200s', $message['android']['time_to_live']);
        $this->assertSame(405, $message['android']['notification']['notification_id']);
    }

    public function test_two_distinct_notifications_have_distinct_collapse_keys(): void
    {
        DB::table('users')->insert([
            ['id' => 1, 'propertyid' => '103', 'department' => 'FOM103', 'status' => 1, 'fcm_token' => 'token-a'],
        ]);
        $collapseKeys = [];
        Http::fake(function (HttpRequest $request) use (&$collapseKeys) {
            if ($request->url() === 'https://oauth2.googleapis.com/token') {
                return Http::response(['access_token' => 'test-access-token'], 200);
            }
            if (str_contains($request->url(), 'fcm.googleapis.com')) {
                $body = json_decode($request->body(), true);
                $collapseKeys[] = $body['message']['android']['collapse_key'] ?? null;
            }
            return Http::response(['name' => 'test'], 200);
        });
        Cache::forget('firebase.messaging.access_token');

        $service = app(FcmNotificationService::class);
        foreach ([501, 502] as $notificationId) {
            $service->sendNotificationMaster([
                'id' => $notificationId,
                'propertyid' => '103',
                'dcode' => 'FOM103',
                'module' => 'Test',
                'task' => 'Payload test',
            ]);
        }

        $this->assertCount(2, $collapseKeys);
        $this->assertNotEquals($collapseKeys[0], $collapseKeys[1]);
    }

    private function fakeFirebase(int $fcmStatus, bool $invalid = false): void
    {
        Http::fake(function (HttpRequest $request) use ($fcmStatus, $invalid) {
            if ($request->url() === 'https://oauth2.googleapis.com/token') {
                return Http::response(['access_token' => 'test-access-token'], 200);
            }
            if ($invalid) {
                return Http::response([
                    'error' => ['details' => [['errorCode' => 'UNREGISTERED']]],
                ], $fcmStatus);
            }
            return Http::response(['name' => 'projects/analysis-hms-test/messages/test'], $fcmStatus);
        });
    }
}
