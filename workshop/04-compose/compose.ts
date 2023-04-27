/*
Composing of functions

Copilot sier:
    "Composition is the process of combining two or more functions to produce a new function."
*/

import { flow } from "fp-ts/function";
import R from "remeda";
import { Currency, Transaction } from "../types";
import {
  dkkToSek,
  sekToUsd,
  usdToGbp,
  gbpToEur,
  eurToNok,
  isCurrency,
} from "./__spoilers/dontopen";
import { transactions } from "../transactions";
import { getDate, getDay, parseISO } from "date-fns/fp";

/**
 * OPPGAVE 4.1: Lag en funksjon som konverterer fra DKK til NOK.
 *
 * Hint: Bruk flow fra fp-ts og funksjonene fra forrige sett med oppgaver til å
 * komponere en ny funksjon som konverterer fra DKK til NOK.
 *
 * Flow er en funksjon som tar inn et sett med funksjoner som parameter, og returnerer en
 * ny funksjon som tar inn en verdi som parameter. Denne verdien blir passert til siste
 * funksjon som ble sendt inn som parameter til flow. Resultatet av dette funksjonkallet blir
 * så sendt til nest siste parameter osv helt til alle funksjonene er kjørt.
 *
 * Eks:
 *
 * const add2 = (a: number) => a + 2
 * const div2 = (a: number) => a / 2
 *
 * flow(div2, add2)(10) // 6
 *
 */
export const dkkToNok: (a: number) => number = flow((tall) => tall);

/**
 * OPPGAVE 4.2: Implementer hver av funksjonene under, så den komponerte funksjonen under
 * returnerer datoen personen får lønn på.
 *
 * Hint: Vi bruker date-fns for å parse datoer og hente ut dag i måneden. Se på importene
 * øverst i fila om du sitter fast. Om du vil så kan du også titte i dokumentasjonen til
 * date-fns: https://date-fns.org/docs/Getting-Started
 */
const bySalary = (transaction: Transaction): boolean => false;
const toDate = (transaction: Transaction): Date => new Date();
const firstItem = <T>(list: T[]): T => list[0];

export const dayOfSalary: (transactions: Transaction[]) => number = flow(
  R.filter(bySalary),
  R.map(toDate),
  // Plugg inn en fn fra date-fns (hint: ikke getDay)
  R.map(() => 0),
  firstItem
);

/**
 * OPPGAVE 4.3: Lag en funksjon som finner ut hvor mye personen i eksempel-datasettet
 * har tjent totalt.
 *
 * Hint: Bruk R.filter og R.sumBy
 */
export const sumSalary: (transactions: Transaction[]) => number = flow(() => 0);

/**
 * OPPGAVE 4.4: Lag en funksjon som bruker diverse Remeda (R.)-funksjoner for å
 * filtrere ut produkter som er kjøpt med en spesifikk valuta og en spesifikk type produkter.
 *
 * Resulterende funksjon burde være curried, og filtrere på en liste av transaksjoner.
 *
 * Hint: Remeda har flere nyttige funksjorer som R.filter og R.sumBy.
 */
type TransactionSummer = (transactions: Transaction[]) => number;
export const amountSpentOnProductByCurrency =
  (currency: Currency) =>
  (product: string): TransactionSummer => {
    return flow(
      // Denne kan slettes
      () => 0
    );
  };

const amountSpentOnProductInNok = amountSpentOnProductByCurrency("NOK");

export const pantsBoughtInNok = amountSpentOnProductInNok("Pants")(transactions);
export const shoesBoughtInNok = amountSpentOnProductInNok("Shoes")(transactions);
