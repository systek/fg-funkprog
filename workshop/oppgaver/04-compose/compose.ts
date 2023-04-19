/*
Composing of functions

Copilot sier:
    "Composition is the process of combining two or more functions to produce a new function."
*/

import { flow } from "fp-ts/function";
import R from "remeda";
import { Currency } from "../constants";
import { Transaction } from "../../createMockData";
import {
  dkkToSek,
  sekToUsd,
  usdToGbp,
  gbpToEur,
  eurToNok,
  isCurrency,
} from "./__spoilers/dontopen";
import { transactions } from "../../data/transactions";
import { getDate, getDay, parseISO } from "date-fns/fp";

/**
 * OPPGAVE 4.1: Lag en funksjon som konverterer fra DKK til NOK.
 *
 * Hint: Bruk flow fra fp-ts og funkjsonene fra forrige sett med oppgaver til å
 * komponere en ny funksjon som konverterer fra DKK til NOK.
 *
 */
export const dkkToNok = flow(dkkToSek, sekToUsd, usdToGbp, gbpToEur, eurToNok);
// export const dkkToNok = flow(undefined);

/**
 * OPPGAVE 4.2: Implementer hver av funksjonene under, så den komponerte funksjonen under
 * returnerer datoen personen får lønn på.
 *
 * Hint: Vi bruker date-fns for å parse datoer og hente ut dag i måneden. Se på importene
 * øverst i fila om du sitter fast. Om du vil så kan du også titte i dokumentasjonen til
 * date-fns: https://date-fns.org/docs/Getting-Started
 */
const bySalary = (transaction: Transaction): boolean => transaction.transactionType === "salary";
const toDate = (transaction: Transaction): Date => parseISO(transaction.time);
const toDayOfMonth = getDate;
const firstItem = <T>(list: T[]): T => list[0];

export const dayOfSalary: (transactions: Transaction[]) => number = flow(
  R.filter(bySalary),
  R.map(toDate),
  R.map(toDayOfMonth),
  firstItem
);

/**
 * OPPGAVE 4.3: Lag en funksjon som finner ut hvor mye personen i eksempel-datasettet
 * tjener
 *
 * Hint: Bruk R.filter og R.sumBy
 */
export const sumSalary: (transactions: Transaction[]) => number = flow(
  R.filter((it) => it.transactionType === "salary"),
  R.sumBy((it) => it.amount)
);
// export const sumSalary: (transactions: Transaction[]) => number = flow(undefined);

export const examplePersonsSalary: number = sumSalary(transactions);

/**
 * OPPGAVE 4.4: Lag en funksjon som bruker diverse Remeda (R.)-funksjoner for å
 * filtrere ut produkter som er kjøpt med en spesifikk valuta og en spesifikk type produkter.
 *
 * Resulterende funksjon burde være curried, og filtrere på en liste av transaksjoner.
 *
 * Hint: Remeda har flere nyttige funksjorer som R.filter, R.map og R.sumBy.
 */
type TransactionSummer = (transactions: Transaction[]) => number;
export const amountSpentOnProductByCurrency =
  (currency: Currency) =>
  (product: string): TransactionSummer => {
    const byProduct = (it: Transaction) => it.product === product;

    return flow(
      R.filter(isCurrency(currency)),
      R.filter(byProduct),
      R.map(R.prop("amount")),
      R.sumBy(R.identity)
    );
  };

const amountSpentOnProductInNok = amountSpentOnProductByCurrency("NOK");

export const pantsBoughtInNok = amountSpentOnProductInNok("Pants")(transactions);
export const shoesBoughtInNok = amountSpentOnProductInNok("Shoes")(transactions);
