/**
 * Converts an amount from a specific currency to another currency based
 * on an exchangeRate
 * @param amount - The amount to be converted.
 * @param exchangeRate - The exchange rate to use.
 * @returns The amount after the exchange.
 */
export const convertCurrency = (exchangeRate: number, amount: number) =>
  exchangeRate * amount;
