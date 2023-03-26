import { faker } from "@faker-js/faker";
import fs from "fs";
import { isBefore, isAfter } from "date-fns";

export type Transaction = {
  currency: string;
  time: string;
  amount: string;
  product?: string;
  merchantCountry?: string;
  merchantName?: string;
  transactionType: string;
};

const currencyCodes = ["EUR", "USD", "NOK", "GBP", "DKK", "SEK"];

const createRandomFinancialData = (): Transaction => ({
  currency: faker.helpers.arrayElement(currencyCodes),
  time: faker.date
    .between(
      new Date("2022-01-01T00:00:00.000Z"),
      new Date("2023-01-01T00:00:00.000Z")
    )
    .toISOString(),
  amount: faker.finance.amount(-30000, -1),
  product: faker.commerce.product(),
  merchantCountry: faker.address.country(),
  merchantName: faker.company.name(),
  transactionType: faker.finance.transactionType(),
});

const data = new Array(1000).fill(null).map(createRandomFinancialData);

for (let i = 1; i < 13; i++) {
  const pad = i < 10 ? `0${i}` : `${i}`;
  data.push({
    currency: "NOK",
    time: new Date(`12-${pad}-2022`).toISOString(),
    amount: "38000",
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

console.log(sortedData);
fs.writeFile("transactions.json", JSON.stringify(sortedData), (err) => {
  console.log("Heck: ", err);
});
