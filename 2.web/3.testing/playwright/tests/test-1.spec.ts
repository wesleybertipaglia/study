import { test, expect } from "@playwright/test";

test("test", async ({ page }) => {
  await page.goto("https://www.youtube.com/");
  await page.getByPlaceholder("Search").fill("learn playwright");
  await page.getByPlaceholder("Search").press("Enter");
  await page.goto("https://www.youtube.com/watch?v=1yaqKDHhktI");
  await page.getByTitle("Share", { exact: true }).click();
  await page.getByLabel("Copy", { exact: true }).click();
  await page.locator("#scroll-button-forward").getByLabel("Next").click();
  const page1Promise = page.waitForEvent("popup");
  await page.getByRole("button", { name: "LinkedIn" }).click();
  const page1 = await page1Promise;
});
