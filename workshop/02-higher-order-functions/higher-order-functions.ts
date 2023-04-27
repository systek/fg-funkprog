/*
Higher order functions

Copilot sier:
    "Higher order functions are functions that take other functions as arguments or return functions as their results."
*/

import { Transaction } from "../types";
import { Currency } from "../constants";

import { isCurrency, nullableProducts } from "./__spoilers/dontopen";

/**
 * OPPGAVE 2.1: Lag en funksjon som tar inn en valuta og en liste med transaksjoner
 * og filtrerer vekk alle andre transaksjoner enn de med den gitte valutaen.
 *
 * Hint: Her får du isCurrency funksjonen fra oppgave 1.2 importert.
 */
export const filterByCurrency = (
  currency: Currency,
  transactions: Transaction[]
) => {
  return transactions;
};

/**
 * OPPGAVE 2.2: Lag en funksjon som filtrerer vekk transaksjoner som ikke benytter valutaen NOK, og returnerer en liste med produkter.
 */
export const productsBoughtWithNOK = (transactions: Transaction[]) => {
  const toProduct = (transaction: Transaction) => "";
  const byNok = (transaction: Transaction) => 0;

  return (
    transactions
      /**
       * Denne filtrer vekk transaksjoner som ikke har produkt (f.eks lønn).
       * La denne ligge igjen til slutt i chainen.
       */
      .filter(nullableProducts)
  );
};

/**
 * OPPGAVE 2.3: Denne funksjonen mottar et parameter som er en funksjon. Du skal da implementere
 * en funksjon som filtrerer transaksjonene basert på filterfunksjonen som blir sendt inn.
 *
 * Hint: Se på testen :)
 */
export const filterTransactionsByProduct = (
  transactions: Transaction[],
  isRelevantTransaction: (transaction: Transaction) => boolean
) => {
  return [];
};

/**
 * OPPGAVE 2.4: Lag en funksjon som returnerer en funksjon som filtrerer en gitt transaksjon basert på valuta-parameteret.
 */
type CurrencyFilter = (transaction: Transaction) => boolean;

export const currencyFilter = (currency: Currency): CurrencyFilter => {
  return () => false;
};
