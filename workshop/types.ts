export type Currency = "EUR" | "NOK" | "SEK" | "DKK" | "USD" | "GBP";

type TransactionType = "withdrawal" | "deposit" | "salary" | "invoice" | "payment";

export type Transaction = {
  currency: Currency;
  time: string;
  amount: number;
  product?: string;
  merchantCountry?: string;
  merchantName?: string;
  transactionType: TransactionType;
};
