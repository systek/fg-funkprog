import { it, expect, describe } from "vitest";
import { filterByCurrency } from "./currying-partial-application";
import transactions from "../../data/transactions";

describe("Currying", () => {
  it("filters out all transactions in NOK", () => {
    expect(filterByCurrency("NOK", transactions)).toHaveLength(165);
  });
  it("filters out all transactions in SEK", () => {
    expect(filterByCurrency("SEK", transactions)).toHaveLength(150);
  });
  it("filters out all transactions in DKK", () => {
    expect(filterByCurrency("DKK", transactions)).toHaveLength(195);
  });
  it("filters out all transactions in EUR", () => {
    expect(filterByCurrency("EUR", transactions)).toHaveLength(159);
  });
  it("filters out all transactions in USD", () => {
    expect(filterByCurrency("USD", transactions)).toHaveLength(172);
  });

  it("filters out all transactions in GBP", () => {
    expect(filterByCurrency("GBP", transactions)).toHaveLength(171);
  });
});
