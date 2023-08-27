{-# LANGUAGE OverloadedStrings #-}
module Compose where

import qualified Control.Applicative as Applicative
import qualified Data.Function as Function
import qualified Data.Time.Calendar as Calendar
import qualified Data.Time.Clock as Clock
import qualified Data.Maybe as Maybe

import Transaction
import Currency
import CurryingPartialApplication

-- OPPGAVE 4.1: Lag en funksjon som konverterer fra DKK til NOK.
dkkToNok :: Double -> Double
dkkToNok = eurToNok . gbpToEur . usdToGbp . sekToUsd . dkkToSek

bySalary :: Transaction -> Bool
bySalary a = transactionType a == "salary"

-- Oppgave 4.3: Calculate total earned salary
sumSalary :: [Transaction] -> Double
sumSalary _ = 0.0

-- Oppgave 4.4: Calculate amount spent on a product in a specific currency
amountSpentOnProductByCurrency :: Currency -> Product -> [Transaction] -> Double
amountSpentOnProductByCurrency c product _ = 0.0
 where
   filterFn :: Transaction -> Bool
   filterFn t = undefined

amountSpentOnProductInNok :: String -> [Transaction] -> Double
amountSpentOnProductInNok = undefined

pantsBoughtInNok :: [Transaction] -> Double
pantsBoughtInNok = undefined

shoesBoughtInNok :: [Transaction] -> Double
shoesBoughtInNok = undefined
