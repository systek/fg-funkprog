import { it, expect, describe } from "vitest";
import { dkkToNok } from "./compose";
import {flow} from "fp-ts/function";

describe("Compose", () => {
  it("eksemel, ps: lek med denne", ()=> {
    // impl
    const ex: (a: number) => number = flow((number): number => number)

    // testl
    ex(69)

    // leik d
    ex(69)
  })

  it("correctly converts currency from DKK to NOK", () => {
    expect(dkkToNok(100)).toEqual(151.30384684799998);
  });
});
