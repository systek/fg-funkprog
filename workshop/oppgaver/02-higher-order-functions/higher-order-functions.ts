import { Transaction } from "../../createMockData";
import { Currency } from "../constants";

export const isCurrency = (currency: Currency, transaction: Transaction) =>
  transaction.currency === currency;

export const filterByCurrency = (
  currency: Currency,
  transactions: Transaction[]
) => {
  return transactions.filter((transactions) =>
    isCurrency(currency, transactions)
  );
};
