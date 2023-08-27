-- Higher order functions

-- Copilot sier:
-- "Higher order functions are functions that take other functions as arguments or return functions as their results."

module HigherOrderFunctions where

import Currency
import Transaction
import PureFunctions

-- OPPGAVE 2.1: Lag en funksjon som tar inn en valuta og en liste med transaksjoner
-- og filtrerer vekk alle andre transaksjoner enn de med den gitte valutaen.
--
-- Hint: Her får du isCurrency funksjonen fra oppgave 1.2 importert.
filterByCurrency :: Currency -> [Transaction] -> [Transaction]
filterByCurrency currency transactions = []

-- OPPGAVE 2.2: Lag en funksjon som filtrerer vekk transaksjoner som ikke benytter valutaen NOK, og returnerer en liste med produkter.
productsBoughtWithNOK :: [Transaction] -> [Product]
productsBoughtWithNOK transactions = []

-- OPPGAVE 2.3: Denne funksjonen mottar et parameter som er en funksjon. Du skal da implementere
-- en funksjon som filtrerer transaksjonene basert på filterfunksjonen som blir sendt inn.
--
-- Hint: Se på testen :)
filterTransactionsByProduct :: [Transaction] -> (Transaction -> Bool) -> [Transaction]
filterTransactionsByProduct transactions isRelevantTransaction = []

-- OPPGAVE 2.4: Lag en funksjon som returnerer en funksjon som filtrerer en gitt transaksjon basert på valuta-parameteret.
type CurrencyFilter = Transaction -> Bool

currencyFilter :: Currency -> CurrencyFilter
currencyFilter currency transaction = True
