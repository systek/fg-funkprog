{-# LANGUAGE OverloadedStrings #-}
module Compose where

import qualified Control.Applicative as Applicative
import qualified Data.Function as Function
import qualified Data.Time.Calendar as Calendar
import qualified Data.Time.Clock as Clock
import qualified Data.List as List
import qualified Data.Maybe as Maybe

import Transaction
import Currency
import CurryingPartialApplication

-- OPPGAVE 4.1: Lag en funksjon som konverterer fra DKK til NOK.
dkkToNok :: Double -> Double
dkkToNok = eurToNok . gbpToEur . usdToGbp . sekToUsd . dkkToSek

-- Oppgave 4.2: Find the day of salary
bySalary :: Transaction -> Bool
bySalary a = False

toDate :: Transaction -> Clock.UTCTime
toDate _ = undefined

dayOfSalary :: [Transaction] -> Int
dayOfSalary = day . toDate . head . List.filter bySalary
 where
   day = (\(_, _, d) -> d) . Calendar.toGregorian . Clock.utctDay

-- Oppgave 4.3: Calculate total earned salary
sumSalary :: [Transaction] -> Double
sumSalary = List.sum . Maybe.catMaybes . List.map maybeSalary
 where
   maybeSalary :: Transaction -> Maybe Double
   maybeSalary transaction
       | transactionType transaction == "Salary" = Just (amount transaction)
       | otherwise = Nothing

-- Oppgave 4.4: Calculate amount spent on a product in a specific currency
amountSpentOnProductByCurrency :: Currency -> String -> [Transaction] -> Double
amountSpentOnProductByCurrency c product = List.sum . List.map amount . List.filter filterFn
 where
   filterFn :: Transaction -> Bool
   filterFn t = transactionType t == product && currency t == c

amountSpentOnProductInNok :: String -> [Transaction] -> Double
amountSpentOnProductInNok = amountSpentOnProductByCurrency "NOK"

pantsBoughtInNok :: [Transaction] -> Double
pantsBoughtInNok = amountSpentOnProductInNok "Pants"

shoesBoughtInNok :: [Transaction] -> Double
shoesBoughtInNok = amountSpentOnProductInNok "Shoes"
