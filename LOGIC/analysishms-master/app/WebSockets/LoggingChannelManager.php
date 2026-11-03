<?php

namespace App\WebSockets;

use BeyondCode\LaravelWebSockets\WebSockets\Channels\ChannelManagers\ArrayChannelManager;
use BeyondCode\LaravelWebSockets\WebSockets\Channels\Channel;
use Illuminate\Support\Facades\DB;
use Exception;
use Illuminate\Support\Facades\Log;

class LoggingChannelManager extends ArrayChannelManager
{
    /**
     * Find or create a channel and log subscription
     */
    public function findOrCreate(string $appId, string $channelName): Channel
    {
        $channel = parent::findOrCreate($appId, $channelName);
        
        // Log channel creation
        try {
            $this->logChannelActivity('create', $appId, $channelName);
        } catch (Exception $e) {
            Log::error('WebSocket Channel Creation Logging Error: ' . $e->getMessage());
        }
        
        return $channel;
    }

    /**
     * Remove from all channels and log disconnection
     */
    public function removeFromAllChannels($connection)
    {
        // Log disconnection before removing
        try {
            if (isset($connection->app)) {
                $this->logChannelDisconnection('disconnect', $connection->app->id, $connection);
            }
        } catch (Exception $e) {
            Log::error('WebSocket Disconnection Logging Error: ' . $e->getMessage());
        }
        
        return parent::removeFromAllChannels($connection);
    }

    /**
     * Log channel activity
     */
    private function logChannelActivity($action, $appId, $channelName)
    {
        try {
            // Extract propertyid and username from channel name pattern
            $propertyid = null;
            $username = 'WebSocket User';
            
            if (preg_match('/property[._-]?(\d+)|(\d+)[-_]/', $channelName, $matches)) {
                $propertyid = $matches[1] ?? $matches[2];
            }
            
            // Skip logging if propertyid is 10 or not found
            if (!$propertyid || $propertyid === '10' || $propertyid === 10) {
                return;
            }
            
            // Log to activity_logs
            DB::table('activity_logs')->insert([
                'propertyid' => $propertyid,
                'username' => $username,
                'user_id' => null,
                'module' => 'WebSocket',
                'action' => ucfirst($action) . ' - ' . $channelName,
                'method' => 'WebSocket',
                'url' => 'ws://websocket/channel',
                'ip_address' => 'WebSocket Server',
                'user_agent' => 'WebSocket Client',
                'properties' => json_encode([
                    'channel' => $channelName,
                    'action' => $action,
                    'app_id' => $appId,
                    'source' => 'websocket_channel',
                ]),
                'created_at' => now(),
            ]);
        } catch (Exception $e) {
            Log::error('WebSocket Activity Logging Error: ' . $e->getMessage());
        }
    }

    /**
     * Log channel disconnection
     */
    private function logChannelDisconnection($action, $appId, $connection)
    {
        try {
            $propertyid = null;
            $username = 'WebSocket User';
            
            // Try to extract from connection data
            if (isset($connection->query)) {
                $propertyid = $connection->query['propertyid'] ?? $connection->query['property_id'] ?? null;
                $username = $connection->query['username'] ?? $connection->query['user'] ?? 'WebSocket User';
            }
            
            // Skip if no propertyid
            if (!$propertyid || $propertyid === '10' || $propertyid === 10) {
                return;
            }
            
            // Get IP address from connection
            $ipAddress = $connection->remoteAddress ?? 'WebSocket Server';
            
            DB::table('activity_logs')->insert([
                'propertyid' => $propertyid,
                'username' => $username,
                'user_id' => null,
                'module' => 'WebSocket',
                'action' => ucfirst($action),
                'method' => 'WebSocket',
                'url' => 'ws://websocket/disconnect',
                'ip_address' => $ipAddress,
                'user_agent' => 'WebSocket Client',
                'properties' => json_encode([
                    'action' => $action,
                    'app_id' => $appId,
                    'source' => 'websocket_disconnect',
                ]),
                'created_at' => now(),
            ]);
        } catch (Exception $e) {
            Log::error('WebSocket Disconnection Logging Error: ' . $e->getMessage());
        }
    }
}
