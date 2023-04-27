/*
Algebraic Data Types

Copilot sier:
    "Algebraic data types are a way to combine different types into one type.
     They are also called tagged unions or discriminated unions."
*/

export type Square = { kind: "square"; size: number };
export type Rectangle = { kind: "rectangle"; height: number; width: number };
export type Circle = { kind: "circle"; radius: number };

type Shape = Square | Rectangle | Circle;

/**
 * Discriminated Union
 *
 * OPPGAVE 5.1: Lag en funksjon som diskriminerer på de forskjellige typene i Shape
 * og regner ut korrekt areal uansett hvilken type som sendes inn.
 * @param shape
 */

/**
 * TS hjelper oss med å vite at vi har dekket alle tilfeller. Dersom vi glemmer
 * en case, vil TS klage på return-typen, da den ville vært `number | undefined`.
 */
export function area(shape: Shape): number {
  switch (shape.kind) {
    default:
      throw new Error("Slett default-blokken ;)");
  }
}

/**
 * OPPGAVE 5.2: Lag en funksjon som håndterer svaret vi får fra dette API-et.
 * Funksjonen skal alltid returnere en streng.
 *
 * For suksess skal resultatet være response.data.
 * For feil skal resultatet være "There was an error: " + feilmeldingen fra response.
 *
 */
export type ErrorResponse = { status: "error"; message: string };
export type SuccessResponse<T> = { status: "success"; data: T };
export type Response<T> = ErrorResponse | SuccessResponse<T>;

export function handleResponse(response: Response<string>): string {
  return "";
}
