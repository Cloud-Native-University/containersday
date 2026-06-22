import { defineConfig, devices } from '@playwright/test';

/**
 * Project-specific Playwright configuration.
 * Tests the Containers Day site served from the workspace root.
 */
export default defineConfig({
    testDir: './tests/project',
    fullyParallel: true,
    workers: 1,
    reporter: [['html', { open: 'never' }]],
    webServer: {
        command: 'hugo serve --source ../.. -p 1313 --bind 127.0.0.1',
        url: 'http://127.0.0.1:1313',
        reuseExistingServer: true,
    },
    use: {
        baseURL: 'http://127.0.0.1:1313',
        trace: 'on-first-retry',
    },
    projects: [
        {
            name: 'chrome',
            use: { channel: 'chrome' },
        },
    ],
});
