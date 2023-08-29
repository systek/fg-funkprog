module PureFunctions where
import Currency
import Transaction

-- OPPGAVE 1.1: En enkel pure function
-- Lag en funksjon som konverterer et beløp fra en spesifikk valuta til
-- en annen valuta basert på en vekslingskurs.

convertCurrency :: Double -> Double -> Double
convertCurrency a r = r * a

-- OPPGAVE 1.2: Lag en funksjon som ser om en transaksjon er av en gitt valuta.
isCurrency :: Currency -> Transaction -> Bool
isCurrency c t = currency t == c
