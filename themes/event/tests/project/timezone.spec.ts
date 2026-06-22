import { test, expect } from '@playwright/test';

const EVENT_START_DATE = '2026-08-22';

test('countdown targets the correct event date', async ({ page }) => {
    await page.goto('/');
    const countdown = page.locator('time.counter-container');
    await expect(countdown).toHaveAttribute('datetime', EVENT_START_DATE);
});

test('hero meta band displays the localized event date and location', async ({ page }) => {
    await page.goto('/');
    const metaBand = page.locator('.hero-meta-band');
    await expect(metaBand).toContainText('22 de agosto');
    await expect(metaBand).toContainText('UAPA, Santiago');
});

test('countdown labels are rendered in the page language', async ({ page }) => {
    await page.goto('/');
    const labels = page.locator('.hero-meta-band .counter__label');
    await expect(labels).toContainText(['Días', 'Horas', 'Min', 'Seg']);
});
