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
dkkToNok = dkkToSek . sekToUsd . usdToGbp . eurToNok . gbpToEur

bySalary :: Transaction -> Bool
bySalary a = transactionType a == "salary"

-- Oppgave 4.3: Calculate total earned salary
sumSalary :: [Transaction] -> Double
sumSalary = sum . map amount . filter bySalary

-- Oppgave 4.4: Calculate amount spent on a product in a specific currency
amountSpentOnProductByCurrency :: Currency -> Product -> [Transaction] -> Double
amountSpentOnProductByCurrency c p = sum . map amount . filter filterFn
 where
   filterFn :: Transaction -> Bool
   filterFn t = transactionProduct t == p && currency t == c

amountSpentOnProductInNok :: Product -> [Transaction] -> Double
amountSpentOnProductInNok = amountSpentOnProductByCurrency "NOK"

pantsBoughtInNok :: [Transaction] -> Double
pantsBoughtInNok = amountSpentOnProductInNok "Pants"

shoesBoughtInNok :: [Transaction] -> Double
shoesBoughtInNok = amountSpentOnProductInNok "Shoes"
