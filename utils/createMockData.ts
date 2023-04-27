import { faker } from "@faker-js/faker";
import fs from "fs";
import { isBefore, isAfter } from "date-fns";
import * as path from "path";

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

const currencyCodes = ["EUR", "USD", "NOK", "GBP", "DKK", "SEK"];

const createRandomFinancialData = (): Transaction => ({
  currency: faker.helpers.arrayElement(currencyCodes),
  time: faker.date
    .between(new Date("2022-01-01T00:00:00.000Z"), new Date("2023-01-01T00:00:00.000Z"))
    .toISOString(),
  amount: +faker.finance.amount(-30000, -1),
  product: faker.commerce.product(),
  merchantCountry: faker.address.country(),
  merchantName: faker.company.name(),
  transactionType: faker.finance.transactionType() as TransactionType,
});

const data = new Array(1000).fill(null).map(createRandomFinancialData);

for (let i = 0; i < 12; i++) {
  data.push({
    currency: "NOK",
    time: new Date(2022, i, 12, 12).toISOString(),
    amount: 38000,
    transactionType: "salary",
  });
}

const sortedData = data.sort((a, b) => {
  if (isBefore(new Date(a.time), new Date(b.time))) {
    return -1;
  }

  if (isAfter(new Date(a.time), new Date(b.time))) {
    return 1;
  }
  return 0;
});

console.log(__dirname);
fs.writeFileSync(
  path.join(__dirname, "./data/transactions.ts"),
  `
import { Transaction } from "../createMockData";

export const transactions: Transaction[] = ${JSON.stringify(sortedData, null, 2)};
`
);
