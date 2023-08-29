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
dkkToNok _ = 0.0

bySalary :: Transaction -> Bool
bySalary a = False

-- Oppgave 4.2: Calculate total earned salary
sumSalary :: [Transaction] -> Double
sumSalary _ = 0.0

-- Oppgave 4.3: Calculate amount spent on a product in a specific currency
amountSpentOnProductByCurrency :: Currency -> Product -> [Transaction] -> Double
amountSpentOnProductByCurrency c p t = 0.0
 where
   filterFn :: Transaction -> Bool
   filterFn t = False

amountSpentOnProductInNok :: Product -> [Transaction] -> Double
amountSpentOnProductInNok p t = 0.0

pantsBoughtInNok :: [Transaction] -> Double
pantsBoughtInNok t = 0.0

shoesBoughtInNok :: [Transaction] -> Double
shoesBoughtInNok t = 0.0
