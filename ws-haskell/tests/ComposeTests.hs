module Main where

import Test.HUnit
import qualified System.Exit as Exit

import Transaction
import Currency
import Compose


t1 = TestCase (assertEqual "Converts from DKK to NOK" 136.2 (fromIntegral (round ((dkkToNok 90) * 10)) / 10))

t3 = TestCase $ assertEqual "Calculate the correct salary" 456000 (sumSalary transactionList)

t4 = TestCase $ assertEqual "Calculate NOK amount spent on pants" (-172401.17) (pantsBoughtInNok transactionList)
t5 = TestCase $ assertEqual "Calculate NOK amount spent on shoes" (-88631.16) (shoesBoughtInNok transactionList)

tests :: Test
tests = TestList [t1, t3, t4, t5]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
