<?php

namespace App\Listeners;

/**
 * DEPRECATED: WebSocket message logging is now handled by LoggingChannelManager
 * which logs channel subscriptions and disconnections directly.
 * 
 * The WebSocketWillProcess event doesn't exist in this version of Laravel WebSockets,
 * so we rely on the custom ChannelManager implementation instead.
 * 
 * This file is kept for reference but is no longer active.
 */

class LogWebSocketMessage
{
    // No longer used - see LoggingChannelManager for WebSocket logging
}
