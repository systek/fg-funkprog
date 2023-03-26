import { it, expect, describe } from "vitest";
import { dkkToNok } from "./compose";

describe("Compose", () => {
  it("correctly converts currency from DKK to NOK", () => {
    expect(dkkToNok(100)).toEqual(151.30384684799998);
  });
});
