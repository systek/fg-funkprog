
-- Currying of functions

-- Copilot says:
-- "Currying is the process of transforming a function that takes multiple arguments into a function that takes them one at a time."

module CurryingPartialApplication where

import Transaction
import Currency
import PureFunctions


-- OPPGAVE 3.2: Gjør om isCurrency fra oppgave 1 til å være curried.
-- Gir ikke så mye mening i Haskell siden alle funksjoner allerede er curried.
-- Denne er altså ferdig løst.
isCurrencyCurried :: Currency -> Transaction -> Bool
isCurrencyCurried = isCurrency

-- OPPGAVE 3.3: Bruk din curried versjon av convertCurrency fra oppgave 3.1 til
-- å lage en funksjon som konverterer fra DKK til SEK.
-- Du har noen konstanter for konvertering liggende klar i Currency-modulen.
dkkToSek :: Double -> Double
dkkToSek c = 0.0

sekToUsd :: Double -> Double
sekToUsd c = 0.0

usdToGbp :: Double -> Double
usdToGbp c = 0.0

gbpToEur :: Double -> Double
gbpToEur c = 0.0

eurToNok :: Double -> Double
eurToNok c = 0.0

