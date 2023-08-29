module Currency where


type Currency = String

exchangeRateDKKToSEK = 1.54;
exchangeRateSEKToUSD = 0.094;
exchangeRateUSDToGBP = 0.82;
exchangeRateGBPToEUR = 1.13;
exchangeRateEURToNOK = 11.28;

dkk :: Currency
dkk = "DKK"
sek :: Currency
sek = "SEK"
usd :: Currency
usd = "USD"
gbp :: Currency
gbp = "GBP"
eur :: Currency
eur = "EUR"
nok :: Currency
nok = "NOK"
