import { it, expect, describe } from "vitest";

import transactions from "../../data/transactions";
import { EUR_TO_NOK } from "../constants";
import { currencyFilter, toAmount } from "./__spoilers/dontopen";

import { dkkToSek, ninetyDkkInNok } from "./currying-partial-application";
import * as CPA from "./currying-partial-application";

describe("OPPGAVE 3.1", () => {
  it("converts EUR to NOK", () => {
    const convertToNOK = CPA.convertCurrency(EUR_TO_NOK);

    const result = transactions
      .filter(currencyFilter("EUR"))
      .map(toAmount)
      .map(convertToNOK)
      .slice(0, 5);

    expect(result).toEqual([
      -176572.8336, -180234.66, -195101.136, -292522.99919999996, -42670.547999999995,
    ]);
  });
});

describe("OPPGAVE 3.2", () => {
  it("tell if transaction is the given currency", () => {
    const isCurrency = CPA.isCurrencyCurried("NOK");

    expect(isCurrency(transactions[0])).toBe(true);
    expect(isCurrency(transactions[1])).toBe(false);
  });
});

describe("OPPGAVE 3.3", () => {
  it("convert from DKK to SEK", () => {
    expect(dkkToSek(100)).toBe(154);
  });

  it("should have the correct NOK", () => {
    expect(Number(ninetyDkkInNok.toFixed(1))).toBe(151.3);
  });
});
