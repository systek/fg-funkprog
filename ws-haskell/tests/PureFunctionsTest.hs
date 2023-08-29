module Main where
import Test.HUnit
import qualified System.Exit as Exit
import Currency
import PureFunctions
import Transaction

nokTransaction = Transaction { currency = "NOK", time =  "2022-01-12T11:00:00.000Z", amount = 38000, transactionProduct = "Pay", merchantCountry = "Norway", merchantName = "Systek AS", transactionType = "salary" }
dkkTransaction = Transaction { currency = "DKK", time =  "2022-01-12T11:00:00.000Z", amount = 38000, transactionProduct = "Pay", merchantCountry = "Norway", merchantName = "Systek AS", transactionType = "salary" }
sekTransaction = Transaction { currency = "SEK", time =  "2022-01-12T11:00:00.000Z", amount = 38000, transactionProduct = "Pay", merchantCountry = "Norway", merchantName = "Systek AS", transactionType = "salary" }
gbpTransaction = Transaction { currency = "GBP", time =  "2022-01-12T11:00:00.000Z", amount = 38000, transactionProduct = "Pay", merchantCountry = "Norway", merchantName = "Systek AS", transactionType = "salary" }
eurTransaction = Transaction { currency = "EUR", time =  "2022-01-12T11:00:00.000Z", amount = 38000, transactionProduct = "Pay", merchantCountry = "Norway", merchantName = "Systek AS", transactionType = "salary" }
usdTransaction = Transaction { currency = "USD", time =  "2022-01-12T11:00:00.000Z", amount = 38000, transactionProduct = "Pay", merchantCountry = "Norway", merchantName = "Systek AS", transactionType = "salary" }



test1 :: Test
test1 = TestCase (assertEqual "Should convert 100 DKK to SEK" 154 (convertCurrency 100 exchangeRateDKKToSEK))


test2 :: Test
test2 = TestCase (assertEqual "Should identify if a transaction was performed with a given currency" True (isCurrency "NOK"  nokTransaction))


test3 :: Test
test3 = TestCase (assertEqual "Should identify if a transaction was performed with a given currency" True (isCurrency "SEK"  sekTransaction))


test4 :: Test
test4 = TestCase (assertEqual "Should identify if a transaction was performed with a given currency" True (isCurrency "DKK"  dkkTransaction))


test5 :: Test
test5 = TestCase (assertEqual "Should identify if a transaction was performed with a given currency" True (isCurrency "EUR"  eurTransaction))


test6 :: Test
test6 = TestCase (assertEqual "Should identify if a transaction was performed with a given currency" True (isCurrency "USD"  usdTransaction))


test7 :: Test
test7 = TestCase (assertEqual "Should identify if a transaction was performed with a given currency" True (isCurrency "GBP"  gbpTransaction))

tests = TestList [
  TestLabel "test1" test1,
  TestLabel "test2" test2,
  TestLabel "test3" test3,
  TestLabel "test4" test4,
  TestLabel "test5" test5,
  TestLabel "test6" test6,
  TestLabel "test7" test7
  ]

main :: IO()
main = do
  result <- runTestTT tests
  if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
