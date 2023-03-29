import { flow } from "fp-ts/function";
import {
  Currency,
  DKK_TO_SEK,
  EUR_TO_NOK,
  GBP_TO_EUR,
  SEK_TO_USD,
  USD_TO_GBP,
} from "../constants";
import { Transaction } from "../../createMockData";
import R, { sumBy } from "remeda";
import {isCurrencyCurried} from "../03-currying-partial-application/currying-partial-application";

// BLACK BOX THIS
const convert = (rate: number) => (amount: number): number => amount * rate;
const dkkToSek = convert(DKK_TO_SEK);
const sekToUsd = convert(SEK_TO_USD);
const usdToGbp = convert(USD_TO_GBP);
const gbpToEur = convert(GBP_TO_EUR);
const eurToNok = convert(EUR_TO_NOK);

// BLACK BOX END

// Del 1: alle burde få til
export const dkkToNok = flow(dkkToSek, sekToUsd, usdToGbp, gbpToEur, eurToNok);

export const filterByCurrency =
  (currency: Currency) => (transactions: Transaction[]) => {
    return transactions.filter((transactions) =>
      isCurrencyCurried(currency)(transactions)
    );
  };

// Del N: 10% får til
const amountSpentOnPantsByCurrency = (currency: Currency): (transactions: Transaction[]) => number => {
  return flow(
    R.filter(isCurrencyCurried(currency)),
    R.filter(it => it.product === "pants"),
    R.map(it => +it.amount),
    R.map(dkkToNok),
    R.sumBy(R.identity),
  );
};
