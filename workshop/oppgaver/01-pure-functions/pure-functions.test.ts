import { it, expect, describe } from "vitest";
import { convertCurrency } from "./pure-functions";
import {
  DKK_TO_SEK,
  EUR_TO_NOK,
  GBP_TO_EUR,
  SEK_TO_USD,
  USD_TO_GBP,
} from "../constants";

describe("convertCurrency", () => {
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
