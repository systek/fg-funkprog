/*
Currying of functions

Copilot sier:
    "Currying is the process of transforming a function that takes multiple arguments into a function that takes them one at a time."
*/

import { Transaction } from "../types";
import { Currency } from "../constants";
import * as ExchangeRates from "../constants";

/**
 * OPPGAVE 3.1: Gjør om convertCurrency fra oppgave 1 til å være curried.
 */
export const convertCurrency = (exchangeRate: number) => (amount: number) => 0;

/**
 * OPPGAVE 3.2: Gjør om isCurrency fra oppgave 1 til å være curried.
 */
export const isCurrencyCurried = (currency: Currency) => {
  return (transaction: Transaction) => 0;
};

/**
 * OPPGAVE 3.3: Bruk din curried versjon av convertCurrency fra oppgave 3.1 til
 * å lage en funksjon som konverterer fra DKK til SEK.
 *
 * Hint: Du finner riktig konverteringsrate i ExchangeRates
 */

type FromCurrencyToCurrency = (amount: number) => number;
export const dkkToSek: FromCurrencyToCurrency = () => 0;
export const sekToUsd: FromCurrencyToCurrency = () => 0;
export const usdToGbp: FromCurrencyToCurrency = () => 0;
export const gbpToEur: FromCurrencyToCurrency = () => 0;
export const eurToNok: FromCurrencyToCurrency = () => 0;

export const ninetyDkkInNok = eurToNok(gbpToEur(usdToGbp(sekToUsd(dkkToSek(90)))));
