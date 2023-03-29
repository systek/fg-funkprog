import { Transaction } from "../createMockData";

export const createTestTransaction = (
  overrides: Partial<Transaction> = {}
): Transaction => ({
  currency: "NOK",
  time: "2022-01-01T11:11:44.709Z",
  amount: -28149.11,
  product: "Mouse",
  merchantCountry: "Palestinian Territory",
  merchantName: "Dickinson, Abshire and Metz",
  transactionType: "deposit",
  ...overrides,
});
