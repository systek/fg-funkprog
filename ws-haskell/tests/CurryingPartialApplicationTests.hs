module Main where

import Test.HUnit
import qualified System.Exit as Exit

import Transaction
import Currency
import CurryingPartialApplication


isNOK = isCurrencyCurried "NOK"

t1 = TestCase (assertEqual "Transaction should not be NOK" True (isNOK (transactionList !! 0)))
t2 = TestCase (assertEqual "Transaction should be NOK" True (isNOK (transactionList !! 1)))
t3 = TestCase (assertEqual "Convert from DKK to SEK" 154 (dkkToSek 100))

tests :: Test
tests = TestList [t1,t2,t3]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
