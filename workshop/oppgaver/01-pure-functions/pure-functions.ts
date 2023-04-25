/*
Pure functions

Copilot sier:
    "Pure functions are functions that always return the same result if the same arguments are passed in. They do not
    depend on any state, or data, change during a program’s execution. They must only depend on their input arguments."
*/

import { Currency } from "../constants";
import { Transaction } from "../../createMockData";

/**
 * OPPGAVE 1.1: En enkel pure function
 *
 * Konverterer et beløp fra en spesifikk valuta til en annen valuta basert
 * på en vekslingskurs
 */
export const convertCurrency = (exchangeRate: number, amount: number) => 0;

/**
 * OPPGAVE 1.2: Lag en funksjon som ser om en transaksjon er av en gitt valuta.
 */
export const isCurrency = (currency: Currency, transaction: Transaction) => 0;

/**
 * OPPGAVE 1.3: En funksjon som ikke er pure?!
 *
 * Begynn med å kjøre test 1 og 2 separat, prøv også å kjør begge testene (kjør describe-blokken).
 *
 * Står du fast? Be veileder om litt JavaScript-skillz.
 */
export const takeFirstN = (input: string[], count: number): string[] => {
  return input.splice(0, count);
};
