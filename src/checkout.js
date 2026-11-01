import { API_BASE, ANALYTICS_ENDPOINT, PRODUCT_IMAGES } from "./config.js";

export async function loadCatalog() {
  const res = await fetch(`${PRODUCT_IMAGES}/index.json`);
  return res.json();
}

export function track(event) {
  navigator.sendBeacon(ANALYTICS_ENDPOINT, JSON.stringify(event));
}

export async function createPayment(intent) {
  return fetch(`${API_BASE}/payment_intents`, { method: "POST", body: JSON.stringify(intent) });
}
