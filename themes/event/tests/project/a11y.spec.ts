import { test, expect } from '@playwright/test';
import AxeBuilder from '@axe-core/playwright';

const pages = [
    { name: 'home', path: '/' },
    { name: 'speakers', path: '/speakers/' },
    { name: 'sessions', path: '/sessions/' },
];

for (const { name, path } of pages) {
    test(`should have no detectable accessibility violations on ${name}`, async ({ page }) => {
        await page.goto(path);
        await page.waitForLoadState('networkidle');

        const accessibilityScanResults = await new AxeBuilder({ page })
            .withTags(['wcag2a', 'wcag2aa', 'wcag21aa'])
            .analyze();

        expect(accessibilityScanResults.violations).toEqual([]);
    });
}
