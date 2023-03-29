/*
Higher order functions

Copilot sier:
    "Higher order functions are functions that take other functions as arguments or return functions as their results."
*/

import { Transaction } from "../../createMockData";
import { Currency } from "../constants";

export const isCurrency = (currency: Currency, transaction: Transaction) =>
  transaction.currency === currency;

/**
 * OPPGAVE 2.1: Lag en funksjon som tar inn en valuta og en liste med transaksjoner
 */
export const filterByCurrency = (
  currency: Currency,
  transactions: Transaction[]
) => {
  return transactions.filter((transactions) =>
    isCurrency(currency, transactions)
  );
};

/**
 * OPPGAVE 2.2: Lag en funksjon som filtrerer ut alle transaksjoner av type NOK, og returnerer en liste med produkter.
 */
export const productsBoughtWithNok = (transactions: Transaction[]) => {
  const toProduct = (transactions: Transaction) => transactions.product;
  const byNok = (transaction: Transaction) => isCurrency("NOK", transaction);

  return transactions
    .filter(byNok)
    .map(toProduct)
    .filter((it) => it != null);
};

/**
 * OPPGAVE 2.3: Utvid signaturen til å ta i mot en funksjon som et parameter som avgjør om en transaksjon er relevant eller ikke.
 */
export const filterTransactionsByProduct = (
  transactions: Transaction[],
  isRelevantTransaction: (transaction: Transaction) => boolean
) => {
  return transactions.filter(isRelevantTransaction);
};
