<?php

namespace App\Services\Performance;

class EndpointNormalizer
{
    public function normalizePath(string $path): string
    {
        $path = trim($path);
        if ($path === '' || $path === '?') {
            return '/';
        }

        // Drop query string and fragment.
        $path = explode('?', $path, 2)[0];
        $path = explode('#', $path, 2)[0];

        // Collapse multiple slashes and preserve root.
        $path = preg_replace('#/{2,}#', '/', $path);
        if ($path === '' || $path === '/') {
            return '/';
        }

        $segments = explode('/', ltrim($path, '/'));
        $normalized = [];
        foreach ($segments as $segment) {
            if ($segment === '' || $segment === '.') {
                continue;
            }
            if ($segment === '..') {
                // Prevent traversal tokens from becoming route parameters.
                $normalized[] = '{id}';
                continue;
            }
            if (ctype_digit($segment)) {
                $normalized[] = '{id}';
            } else {
                $normalized[] = $segment;
            }
        }

        return '/' . implode('/', $normalized);
    }

    public function normalizeRequestLine(string $requestLine): array
    {
        $parts = preg_split('/\s+/', trim($requestLine));
        $method = strtoupper($parts[0] ?? 'GET');
        $rawPath = $parts[1] ?? '/';
        $protocol = $parts[2] ?? '';

        return [
            'method' => $method !== '' ? $method : 'GET',
            'path' => $rawPath,
            'endpoint' => $this->normalizePath($rawPath),
            'protocol' => $protocol,
        ];
    }
}
