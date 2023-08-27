
-- Currying of functions

-- Copilot says:
-- "Currying is the process of transforming a function that takes multiple arguments into a function that takes them one at a time."

module CurryingPartialApplication where

import Transaction
import Currency
import PureFunctions


-- OPPGAVE 3.2: Gjør om isCurrency fra oppgave 1 til å være curried.
isCurrencyCurried :: Currency -> Transaction -> Bool
isCurrencyCurried currency transaction = False

-- OPPGAVE 3.3: Bruk din curried versjon av convertCurrency fra oppgave 3.1 til
-- å lage en funksjon som konverterer fra DKK til SEK.
dkkToSek :: Double -> Double
dkkToSek = convertCurrency exchangeRateDKKToSEK

sekToUsd :: Double -> Double
sekToUsd = convertCurrency exchangeRateSEKToUSD

usdToGbp :: Double -> Double
usdToGbp = convertCurrency exchangeRateUSDToGBP

gbpToEur :: Double -> Double
gbpToEur = convertCurrency exchangeRateGBPToEUR

eurToNok :: Double -> Double
eurToNok = convertCurrency exchangeRateEURToNOK

