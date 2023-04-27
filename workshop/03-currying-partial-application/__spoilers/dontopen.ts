import { Transaction, Currency } from "../../types";

export const currencyFilter = (currency: Currency) => {
  return (transaction: Transaction): boolean =>
    currency === transaction.currency;
};

export const toAmount = (it: Transaction): number => it.amount;
