module Main where
import Test.HUnit
import qualified System.Exit as Exit
import HigherOrderFunctions
import Transaction
import Currency

-- Define your test cases as TestCases

ft1 = TestCase (assertEqual "Filters out all transactions in NOK" 181 (length (filterByCurrency "NOK" transactionList)))
ft2 = TestCase (assertEqual "Filters out all transactions in SEK" 160 (length (filterByCurrency "SEK" transactionList)))
ft3 = TestCase (assertEqual "Filters out all transactions in DKK" 171 (length (filterByCurrency "DKK" transactionList)))
ft4 = TestCase (assertEqual "Filters out all transactions in EUR" 160 (length (filterByCurrency "EUR" transactionList)))
ft5 = TestCase (assertEqual "Filters out all transactions in USD" 184 (length (filterByCurrency "USD" transactionList)))
ft6 = TestCase (assertEqual "Filters out all transactions in GBP" 156 (length (filterByCurrency "GBP" transactionList)))

tb1 = TestCase (assertEqual "Filters out all transactions in NOK" 181 (length (productsBoughtWithNOK transactionList)))
tb2 = TestCase (assertEqual "Filters out all transactions in NOK and checks first 5 products" ["Pizza", "Bacon", "Pants", "Chicken", "Ball"]
        (take 5 (productsBoughtWithNOK transactionList)))

tf1 = TestCase (assertEqual "Filter according to the predicate" 6
                       (length (filterTransactionsByProduct transactionList (\transaction -> currency transaction == "NOK" && amount transaction < -29000))))
tf2 = TestCase (assertEqual "Find all the mice" 38
                       (length (filterTransactionsByProduct transactionList (\transaction -> transactionProduct transaction == "Mouse"))))

tcf1 = TestCase (assertEqual "Shall filter by DKK" 171 (length (filter (currencyFilter "DKK") transactionList)))
tcf2 = TestCase (assertEqual "Shall filter by USD" 184 (length (filter (currencyFilter "USD") transactionList)))

allTests :: Test
allTests = TestList [
    ft1,
    ft2,
    ft3,
    ft4,
    ft5,
    ft6,
    tb1,
    tb2,
    tf1,
    tf2,
    tcf1,
    tcf2
  ]

main :: IO ()
main = do
    result <- runTestTT allTests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess

