/*
Currying of functions

Copilot sier:
    "Currying is the process of transforming a function that takes multiple arguments into a function that takes them one at a time."
*/

import { Transaction } from "../../createMockData";
import { Currency } from "../constants";

/**
 * OPPGAVE 3.1: Gjør om convertCurrency fra oppgave 1 til å være curried.
 */
export const convertCurrency = (exchangeRate: number, amount: number) =>
  exchangeRate * amount;

/**
 * OPPGAVE 3.2: Gjør om isCurrency fra oppgave 1 til å være curried.
 */

// garb???
export const isCurrencyCurried = (currency: Currency) => {
  return (transaction: Transaction) => transaction.currency === currency;
};

export const filterByCurrency = (
  currency: Currency,
  transactions: Transaction[]
) => {
  return transactions.filter(isCurrencyCurried(currency));
};
