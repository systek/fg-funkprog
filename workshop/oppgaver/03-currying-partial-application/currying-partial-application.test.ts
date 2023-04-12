import { it, expect, describe } from "vitest";

import transactions from "../../data/transactions";
import { EUR_TO_NOK } from "../constants";
import { currencyFilter, toAmount } from "./__spoilers/dontopen";

import { filterByCurrency } from "./currying-partial-application";
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
      -176572.8336, -180234.66, -195101.136, -292522.99919999996,
      -42670.547999999995,
    ]);
  });
});

describe("OPPGAVE 3.2", () => {

});

describe("TODO maybe use, maybe garb", () => {
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
