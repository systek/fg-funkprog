import { it, expect, describe } from "vitest";
import {
  filterByCurrency,
  filterTransactionsByProduct,
  productsBoughtWithNok,
} from "./higher-order-functions";
import transactions from "../../data/transactions.json";

describe("OPPGAVE 2.1", () => {
  it("filters out all transactions in NOK", () => {
    expect(filterByCurrency("NOK", transactions)).toHaveLength(180);
  });

  it("filters out all transactions in SEK", () => {
    expect(filterByCurrency("SEK", transactions)).toHaveLength(139);
  });

  it("filters out all transactions in DKK", () => {
    expect(filterByCurrency("DKK", transactions)).toHaveLength(184);
  });

  it("filters out all transactions in EUR", () => {
    expect(filterByCurrency("EUR", transactions)).toHaveLength(162);
  });

  it("filters out all transactions in USD", () => {
    expect(filterByCurrency("USD", transactions)).toHaveLength(168);
  });

  it("filters out all transactions in GBP", () => {
    expect(filterByCurrency("GBP", transactions)).toHaveLength(179);
  });
});

describe("OPPGAVE 2.2", () => {
  it("filters out all transactions in NOK", () => {
    expect(productsBoughtWithNok(transactions)).toHaveLength(168);
  });

  it("filters out all transactions in NOK", () => {
    expect(productsBoughtWithNok(transactions).slice(0, 5)).toEqual([
      "Mouse",
      "Towels",
      "Mouse",
      "Shoes",
      "Fish",
    ]);
  });
});

describe("OPPGAVE 2.3", () => {
  it("filter according to the predicate", () => {
    expect(
      filterTransactionsByProduct(
        transactions,
        (product) => product.currency === "NOK" && product.amount < -29000
      )
    ).toHaveLength(2);
  });

  it("find all the mice", () => {
    expect(
      filterTransactionsByProduct(
        transactions,
        (product) => product.product === "Mouse"
      )
    ).toHaveLength(63);
  });
});
