import { test, expect } from "@playwright/test";

test("test", async ({ page }) => {
  await page.goto("https://www.google.com/search?q=google");
  await page.getByLabel("Adicionar Translate").click();
  await page
    .getByRole("link", {
      name: "Google Tradutor Google https://translate.google.com.br ›",
    })
    .click();
  await page.getByLabel("Texto de origem").fill("happy coding");
  await page
    .getByLabel("Resultados de tradução")
    .locator("div")
    .filter({ hasText: "Codificação feliz" })
    .nth(2)
    .click();
});
