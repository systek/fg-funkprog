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

describe("OPPGAVE 1.1", () => {
  it("correctly converts from DKK to SEK", () => {
    expect(convertCurrency(DKK_TO_SEK, 100)).toEqual(154);
  });

  it("correctly converts from SEK to USD", () => {
    expect(convertCurrency(SEK_TO_USD, 100)).toEqual(9.4);
  });

  it("correctly converts from USD to GBP", () => {
    expect(convertCurrency(USD_TO_GBP, 100)).toEqual(82);
  });

  it("correctly converts from GBP to EUR", () => {
    expect(convertCurrency(GBP_TO_EUR, 100)).toEqual(112.99999999999999);
  });

  it("correctly converts from EUR to NOK", () => {
    expect(convertCurrency(EUR_TO_NOK, 100)).toEqual(1128);
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
