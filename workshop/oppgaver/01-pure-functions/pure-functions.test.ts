import { it, expect, describe } from "vitest";

import {
  DKK_TO_SEK,
  EUR_TO_NOK,
  GBP_TO_EUR,
  SEK_TO_USD,
  USD_TO_GBP,
} from "../constants";
import { Transaction } from "../../createMockData";

import { convertCurrency, isCurrency, takeFirstN } from "./pure-functions";
import { createFilterByMordi } from "../02-higher-order-functions/higher-order-functions";

describe("OPPGAVE 1.1", () => {
  it("correctly converts from DKK to SEK", () => {
    expect(convertCurrency(100, DKK_TO_SEK)).toEqual(154);
  });

  it("correctly converts from SEK to USD", () => {
    expect(convertCurrency(100, SEK_TO_USD)).toEqual(9.4);
  });

  it("correctly converts from USD to GBP", () => {
    expect(convertCurrency(100, USD_TO_GBP)).toEqual(82);
  });

  it("correctly converts from GBP to EUR", () => {
    expect(convertCurrency(100, GBP_TO_EUR)).toEqual(112.99999999999999);
  });

  it("correctly converts from EUR to NOK", () => {
    expect(convertCurrency(100, EUR_TO_NOK)).toEqual(1128);
  });
});

describe("OPPGAVE 1.2", () => {
  it("Should return true when the currency is DKK", () => {
    const transaction = { currency: "DKK" } as Transaction;
    expect(isCurrency("DKK", transaction)).toEqual(true);
  });

  it("Should return true when the currency is NOK", () => {
    const transaction = { currency: "NOK" } as Transaction;
    expect(isCurrency("NOK", transaction)).toEqual(true);
  });

  it("Should return true when the currency is GBP", () => {
    const transaction = { currency: "GBP" } as Transaction;
    expect(isCurrency("GBP", transaction)).toEqual(true);
  });
});

describe("OPPGAVE 1.3", () => {
  const transactions: string[] = [
    "Transaction-A",
    "Transaction-B",
    "Transaction-C",
  ];

  it("get first two elements", () => {
    expect(takeFirstN(transactions, 2)).toEqual([
      "Transaction-A",
      "Transaction-B",
    ]);
  });

  it("get first element", () => {
    expect(takeFirstN(transactions, 1)).toEqual(["Transaction-A"]);
  });

  it("get all elements", () => {
    expect(takeFirstN(transactions, 3)).toEqual([
      "Transaction-A",
      "Transaction-B",
      "Transaction-C",
    ]);
  });
});
