import { it, expect, describe } from "vitest";
import {
  filterByCurrency,
  filterTransactionsByProduct,
  productsBoughtWithNOK,
  currencyFilter,
} from "./higher-order-functions";
import { transactions } from "../../data/transactions";

describe("OPPGAVE 2.1", () => {
  it("filters out all transactions in NOK", () => {
    expect(filterByCurrency("NOK", transactions)).toHaveLength(181);
  });

  it("filters out all transactions in SEK", () => {
    expect(filterByCurrency("SEK", transactions)).toHaveLength(160);
  });

  it("filters out all transactions in DKK", () => {
    expect(filterByCurrency("DKK", transactions)).toHaveLength(171);
  });

  it("filters out all transactions in EUR", () => {
    expect(filterByCurrency("EUR", transactions)).toHaveLength(160);
  });

  it("filters out all transactions in USD", () => {
    expect(filterByCurrency("USD", transactions)).toHaveLength(184);
  });

  it("filters out all transactions in GBP", () => {
    expect(filterByCurrency("GBP", transactions)).toHaveLength(156);
  });
});

describe("OPPGAVE 2.2", () => {
  it("filters out all transactions in NOK", () => {
    expect(productsBoughtWithNOK(transactions)).toHaveLength(169);
  });

  it("filters out all transactions in NOK", () => {
    expect(productsBoughtWithNOK(transactions).slice(0, 5)).toEqual([
      "Pizza",
      "Bacon",
      "Pants",
      "Chicken",
      "Ball",
    ]);
  });
});

describe("OPPGAVE 2.3", () => {
  it("filter according to the predicate", () => {
    expect(
      filterTransactionsByProduct(
        transactions,
        (transaction) => transaction.currency === "NOK" && transaction.amount < -29000
      )
    ).toHaveLength(6);
  });

  it("find all the mice", () => {
    expect(
      filterTransactionsByProduct(
        transactions,
        (transaction) => transaction.product === "Mouse"
      )
    ).toHaveLength(38);
  });
});

describe("OPPGAVE 2.4", () => {
  it("shall filter by DKK", () => {
    const byDKK = currencyFilter("DKK");

    expect(transactions.filter(byDKK)).toHaveLength(171);
  });

  it("shall filter by USD", () => {
    const byUSD = currencyFilter("USD");

    expect(transactions.filter(byUSD)).toHaveLength(184);
  });
});
