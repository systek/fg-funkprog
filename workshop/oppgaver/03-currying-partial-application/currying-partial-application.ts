import { Transaction } from "../../createMockData";
import { Currency } from "../constants";

// Gjør convert currency om til en curried funksjon
const convertCurrency = (exchangeRate: number) => (amount: number) =>
  exchangeRate * amount;

export const isCurrencyCurried =
  (currency: Currency) => (transaction: Transaction) =>
    transaction.currency === currency;

export const filterByCurrency = (
  currency: Currency,
  transactions: Transaction[]
) => {
  return transactions.filter(isCurrencyCurried(currency));
};
