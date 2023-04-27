/*
Currying of functions

Copilot sier:
    "Currying is the process of transforming a function that takes multiple arguments into a function that takes them one at a time."
*/

import { Transaction, Currency } from "../types";
import * as ExchangeRates from "../constants";

/**
 * OPPGAVE 3.1: Gjør om convertCurrency fra oppgave 1 til å være curried.
 */
export const convertCurrency = (exchangeRate: number) => (amount: number) => exchangeRate * amount;

/**
 * OPPGAVE 3.2: Gjør om isCurrency fra oppgave 1 til å være curried.
 */
export const isCurrencyCurried = (currency: Currency) => {
  return (transaction: Transaction) => transaction.currency === currency;
};

/**
 * OPPGAVE 3.3: Bruk din curried versjon av convertCurrency fra oppgave 3.1 til
 * å lage en funksjon som konverterer fra DKK til SEK.
 *
 * Hint: Du finner riktig konverteringsrate i ExchangeRates
 */

type FromCurrencyToCurrency = (amount: number) => number;
export const dkkToSek: FromCurrencyToCurrency = convertCurrency(ExchangeRates.DKK_TO_SEK);
export const sekToUsd: FromCurrencyToCurrency = convertCurrency(ExchangeRates.SEK_TO_USD);
export const usdToGbp: FromCurrencyToCurrency = convertCurrency(ExchangeRates.USD_TO_GBP);
export const gbpToEur: FromCurrencyToCurrency = convertCurrency(ExchangeRates.GBP_TO_EUR);
export const eurToNok: FromCurrencyToCurrency = convertCurrency(ExchangeRates.EUR_TO_NOK);

export const ninetyDkkInNok = eurToNok(gbpToEur(usdToGbp(sekToUsd(dkkToSek(90)))));
