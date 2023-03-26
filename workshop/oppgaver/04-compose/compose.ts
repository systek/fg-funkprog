import { flow } from "fp-ts/function";
import {
  Currency,
  DKK_TO_SEK,
  EUR_TO_NOK,
  GBP_TO_EUR,
  SEK_TO_USD,
  USD_TO_GBP,
} from "../constants";
import { isCurrency } from "../02-higher-order-functions/higher-order-functions";
import { Transaction } from "../../createMockData";
import { sumBy } from "remeda";

const dkkToSek = (amount: number) => amount * DKK_TO_SEK;
const sekToUsd = (amount: number) => amount * SEK_TO_USD;
const usdToGbp = (amount: number) => amount * USD_TO_GBP;
const gbpToEur = (amount: number) => amount * GBP_TO_EUR;
const eurToNok = (amount: number) => amount * EUR_TO_NOK;

export const dkkToNok = flow(dkkToSek, sekToUsd, usdToGbp, gbpToEur, eurToNok);

export const filterByCurrency =
  (currency: Currency) => (transactions: Transaction[]) => {
    return transactions.filter((transactions) =>
      isCurrency(currency, transactions)
    );
  };

// slutten av section
const amountSpentOnPantsByCurrency: number = (currency: Currency) => {
  return flow(
    // en e
    filterByCurrency(currency),
    // anna oppgave
    // byClothes,
    // kanskje den e ny
    sumBy((it) => it.amount),
    // ToNok
    dkkToNok
  );
};
