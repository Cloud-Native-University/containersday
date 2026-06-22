import { test, expect } from '@playwright/test';

test('Spanish home page has correct language and translations', async ({ page }) => {
    await page.goto('/');
    await expect(page.locator('html')).toHaveAttribute('lang', 'es');
    await expect(page).toHaveTitle(/Containers Day/);
    await expect(page.getByRole('heading', { name: /Beneficios del Evento/i })).toBeVisible();
});

test('English home page has correct language and translations', async ({ page }) => {
    await page.goto('/en/');
    await expect(page.locator('html')).toHaveAttribute('lang', 'en');
    await expect(page.getByRole('heading', { name: /Event Benefits/i })).toBeVisible();
});

test('hreflang alternate links exist on the home page', async ({ page }) => {
    await page.goto('/');
    const alternates = page.locator('link[rel="alternate"][hreflang]');
    await expect(alternates).toHaveCount(2);
    const hreflangs = await alternates.evaluateAll((elements) =>
        elements.map((el) => el.getAttribute('hreflang'))
    );
    expect(hreflangs).toContain('es');
    expect(hreflangs).toContain('en');
});

test('language switcher navigates to the English version', async ({ page }) => {
    await page.goto('/');
    const langSelect = page.locator('select[aria-label="Idioma"]').first();
    await langSelect.selectOption({ label: 'EN' });
    await page.waitForURL('**/en/**');
    await expect(page.locator('html')).toHaveAttribute('lang', 'en');
});
