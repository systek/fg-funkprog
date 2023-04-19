import { it, expect, describe } from "vitest";
import {
  dayOfSalary,
  dkkToNok,
  examplePersonsSalary,
  pantsBoughtInNok,
  shoesBoughtInNok,
} from "./compose";
import { transactions } from "../../data/transactions";

describe("OPPGAVE 4.1", () => {
  it("convert from DKK to SEK", () => {
    expect(Number(dkkToNok(90).toFixed(1))).toBe(136.2);
  });
});

describe("OPPGAVE 4.2", () => {
  it("get the day of salary", () => {
    expect(dayOfSalary(transactions)).toBe(12);
  });
});

describe("OPPGAVE 4.3", () => {
  it("Should calculate the correct salary", () => {
    expect(examplePersonsSalary).toEqual(456000);
  });
});

describe("OPPGAVE 4.4", () => {
  it("Should calculate NOK amount spent on pants and shoes", () => {
    expect(pantsBoughtInNok).toBe(-172401.17);
    expect(shoesBoughtInNok).toBe(-88631.16);
  });
});
