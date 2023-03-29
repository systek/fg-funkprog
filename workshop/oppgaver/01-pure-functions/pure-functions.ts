import { Currency } from "../constants";
import { Transaction } from "../../createMockData";

/**
 * OPPGAVE 1.1: En enkel pure function
 *
 * Converts an amount from a specific currency to another currency based
 * on an exchangeRate
 */
export const convertCurrency = (exchangeRate: number, amount: number) =>
  exchangeRate * amount;

/**
 * OPPGAVE 1.2: En funksjon som ikke er pure?!
 *
 * Begynn med å kjøre test 1 og 2 separat, prøv også å kjør begge testene (kjør describe-blokken).
 *
 * Står du fast? Be veileder om litt JavaScript-skillz.
 */
export const takeFirstN = (input: string[], count: number): string[] => {
  return input.splice(0, count);
};

/**
 * OPPGAVE 1.3: Lag en funksjon som ser om en transaksjon er av en gitt valuta.
 */
export const isCurrency = (currency: Currency, transaction: Transaction) =>
  false;
