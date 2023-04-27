import * as ExchangeRates from "../../constants";
import { convertCurrency } from "../../03-currying-partial-application/currying-partial-application";
import { Transaction, Currency } from "../../types";

export const dkkToSek = convertCurrency(ExchangeRates.DKK_TO_SEK);
export const sekToUsd = convertCurrency(ExchangeRates.SEK_TO_USD);
export const usdToGbp = convertCurrency(ExchangeRates.USD_TO_GBP);
export const gbpToEur = convertCurrency(ExchangeRates.GBP_TO_EUR);
export const eurToNok = convertCurrency(ExchangeRates.EUR_TO_NOK);

export const isCurrency = (currency: Currency) => (transaction: Transaction) =>
  transaction.currency === currency;
