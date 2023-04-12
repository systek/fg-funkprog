/*
Higher order functions

Copilot sier:
    "Higher order functions are functions that take other functions as arguments or return functions as their results."
*/

import { Transaction } from "../../createMockData";
import { Currency } from "../constants";

import { isCurrency } from "./__spoilers/dontopen";

/**
 * OPPGAVE 2.1: Lag en funksjon som tar inn en valuta og en liste med transaksjoner
 * og filtrerer ut transaksjonene i den gitte valutaen.
 *
 * Hint: Her får du isCurrency funksjonen fra oppgave 1.2 importert.
 */
export const filterByCurrency = (
  currency: Currency,
  transactions: Transaction[]
) => {
  return transactions.filter((transactions) => {
    return isCurrency(currency, transactions);
  });
};

/**
 * OPPGAVE 2.2: Lag en funksjon som filtrerer ut alle transaksjoner i valutaen NOK, og returnerer en liste med produkter.
 */
export const productsBoughtWithNOK = (transactions: Transaction[]) => {
  const toProduct = (transaction: Transaction) => transaction.product;
  const byNok = (transaction: Transaction) => isCurrency("NOK", transaction);

  return transactions
    .filter(byNok)
    .map(toProduct)
    .filter((it): it is string => it != null);
};

/**
 * OPPGAVE 2.3: Utvid signaturen til å ta i mot en funksjon som et parameter som avgjør om en transaksjon er relevant eller ikke.
 *
 * Hint: Se på testen :)
 */
export const filterTransactionsByProduct = (
  transactions: Transaction[],
  isRelevantTransaction: (transaction: Transaction) => boolean
) => {
  return transactions.filter(isRelevantTransaction);
  // return []
};

/**
 * OPPGAVE 2.4: Lag en funksjon som returnerer en funksjon som filtrerer en gitt transaksjon basert på valuta-parameteret.
 */
type CurrencyFilter = (transaction: Transaction) => boolean;

export const currencyFilter = (currency: Currency): CurrencyFilter => {
  return (transaction) => currency === transaction.currency;
  // return () => false
};
