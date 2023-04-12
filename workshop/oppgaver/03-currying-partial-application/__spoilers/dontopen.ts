import { Currency } from "../../constants";
import { Transaction } from "../../../createMockData";

export const currencyFilter = (currency: Currency) => {
  return (transaction: Transaction): boolean =>
    currency === transaction.currency;
};

export const toAmount = (it: Transaction): number => it.amount;
