type TransactionType = "withdrawal" | "deposit" | "salary" | "invoice" | "payment";

export type Transaction = {
  currency: string;
  time: string;
  amount: number;
  product?: string;
  merchantCountry?: string;
  merchantName?: string;
  transactionType: TransactionType;
};