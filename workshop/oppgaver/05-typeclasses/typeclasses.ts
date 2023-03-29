import { Ord } from "fp-ts/Ord";
import { Eq } from "fp-ts/Eq";
import { sort, head, reverse } from "fp-ts/Array";
import { flow } from "fp-ts/function";
import { Option } from "fp-ts/Option";
import { Currency } from "../constants";
import { Transaction } from "../../createMockData";
import { createTestTransaction } from "../../helpers/generateTestTransaction";

const eqTransaction: Eq<Transaction> = {
  equals: (t1, t2) => t1.currency === t2.currency && t1.amount === t2.amount,
};

const ordTransaction: Ord<Transaction> = {
  equals: eqTransaction.equals,
  compare: (a1, a2) => -1, // stress
};

const findLargest = <T>(ordInstance: Ord<T>) =>
  flow(sort(ordInstance), reverse, head);

const findLargestTransaction: (
  transaction: Transaction[]
) => Option<Transaction> = findLargest<Transaction>(ordTransaction);

// PUT THIS IS 05-algebraic unions
// RENAME THIS FILE TO 06-typeclasses
type GoodOrBadUnion = { goodStuff: number } | { ohNoError: string };

function somethingEither(input: GoodOrBadUnion) {

}
