module Transaction where
import Currency

type TransactionType = String
type Product = String

data Transaction = Transaction {
  amount :: Double,
  currency :: Currency,
  time :: String,
  transactionProduct :: Product,
  transactionType :: TransactionType,
  merchantCountry :: String,
  merchantName :: String
} deriving Show

transactionList :: [Transaction]
transactionList = [
    Transaction { currency = "EUR", time =  "2022-01-03T05:29:43.058Z", amount = -22821.68, transactionProduct = "Cheese", merchantCountry = "Bouvet Island (Bouvetoya)", merchantName = "Casper Inc", transactionType = "withdrawal" },
    Transaction { currency = "GBP", time =  "2022-01-03T14:13:56.438Z", amount = -751.5, transactionProduct = "Shoes", merchantCountry = "Guam", merchantName = "Reilly Group", transactionType = "deposit" },
    Transaction { currency = "NOK", time =  "2022-01-03T01:46:26.265Z", amount = -13748.72, transactionProduct = "Pizza", merchantCountry = "Armenia", merchantName = "Greenholt and Sons", transactionType = "invoice" },
    Transaction { currency = "USD", time =  "2022-01-02T19:07:22.432Z", amount = -2831.55, transactionProduct = "Towels", merchantCountry = "Wallis and Futuna", merchantName = "Oberbrunner - Littel", transactionType = "withdrawal" },
    Transaction { currency = "NOK", time =  "2022-01-03T15:56:38.524Z", amount = -23076.4, transactionProduct = "Bacon", merchantCountry = "Angola", merchantName = "Morar - Connelly", transactionType = "withdrawal" },
    Transaction { currency = "NOK", time =  "2022-01-04T15:23:36.662Z", amount = -27401.66, transactionProduct = "Pants", merchantCountry = "Solomon Islands", merchantName = "Sanford - Bartell", transactionType = "withdrawal" },
    Transaction { currency = "DKK", time =  "2022-01-04T17:49:16.753Z", amount = -16180.2, transactionProduct = "Chicken", merchantCountry = "Cook Islands", merchantName = "Dickens and Sons", transactionType = "deposit" },
    Transaction { currency = "SEK", time =  "2022-01-05T07:16:19.170Z", amount = -3241.24, transactionProduct = "Ball", merchantCountry = "Panama", merchantName = "Jerde - Lindgren", transactionType = "deposit" },
    Transaction { currency = "SEK", time =  "2022-01-05T07:41:26.125Z", amount = -10368.29, transactionProduct = "Chicken", merchantCountry = "Iraq", merchantName = "Larson, Rodriguez and Gorczany", transactionType = "payment" },
    Transaction { currency = "GBP", time =  "2022-01-05T22:23:13.113Z", amount = -13613.93, transactionProduct = "Bike", merchantCountry = "Namibia", merchantName = "Graham - Predovic", transactionType = "deposit" },
    Transaction { currency = "NOK", time =  "2022-01-06T00:02:22.537Z", amount = -18210.49, transactionProduct = "Chicken", merchantCountry = "Portugal", merchantName = "Nitzsche - Purdy", transactionType = "invoice" },
    Transaction { currency = "NOK", time =  "2022-01-06T03:14:51.461Z", amount = -13023.3, transactionProduct = "Ball", merchantCountry = "Slovenia", merchantName = "Keeling and Sons", transactionType = "deposit" },
    Transaction { currency = "DKK", time =  "2022-01-06T13:48:41.442Z", amount = -16058.85, transactionProduct = "Pants", merchantCountry = "Guatemala", merchantName = "Considine - Schmeler", transactionType = "withdrawal" },
    Transaction { currency = "SEK", time =  "2022-01-06T20:54:37.868Z", amount = -11130.74, transactionProduct = "Pizza", merchantCountry = "Cocos (Keeling) Islands", merchantName = "Volkman and Sons", transactionType = "payment" },
    Transaction { currency = "USD", time =  "2022-01-07T00:15:26.936Z", amount = -28486.87, transactionProduct = "Computer", merchantCountry = "Aruba", merchantName = "Beahan, Kris and Kassulke", transactionType = "withdrawal" },
    Transaction { currency = "USD", time =  "2022-01-07T04:22:22.317Z", amount = -25229.54, transactionProduct = "Fish", merchantCountry = "Sudan", merchantName = "Rutherford, Friesen and Berge", transactionType = "invoice" },
    Transaction { currency = "SEK", time =  "2022-01-07T04:59:27.263Z", amount = -17268.23, transactionProduct = "Chair", merchantCountry = "Macedonia", merchantName = "Bode, Weissnat and Spencer", transactionType = "withdrawal" },
    Transaction { currency = "EUR", time =  "2022-01-07T11:32:46.386Z", amount = -17464.36, transactionProduct = "Mouse", merchantCountry = "Sudan", merchantName = "Tremblay, Abshire and Fahey", transactionType = "withdrawal" },
    Transaction { currency = "SEK", time =  "2022-01-07T17:05:41.308Z", amount = -5625.88, transactionProduct = "Shoes", merchantCountry = "Fiji", merchantName = "Swaniawski - Bahringer", transactionType = "withdrawal" },
    Transaction { currency = "EUR", time =  "2022-01-07T19:45:27.694Z", amount = -11740.15, transactionProduct = "Chicken", merchantCountry = "French Polynesia", merchantName = "Denesik Inc", transactionType = "payment" },
    Transaction { currency = "GBP", time =  "2022-01-08T20:23:07.211Z", amount = -11065.89, transactionProduct = "Soap", merchantCountry = "Virgin Islands, British", merchantName = "Conroy LLC", transactionType = "withdrawal" },
    Transaction { currency = "SEK", time =  "2022-01-09T00:40:37.964Z", amount = -9451.38, transactionProduct = "Salad", merchantCountry = "Guam", merchantName = "Kshlerin - Hane", transactionType = "invoice" },
    Transaction { currency = "EUR", time =  "2022-01-09T08:37:44.683Z", amount = -28171.27, transactionProduct = "Car", merchantCountry = "Antigua and Barbuda", merchantName = "Feeney - Nader", transactionType = "payment" },
    Transaction { currency = "USD", time =  "2022-01-11T03:56:10.984Z", amount = -21938.29, transactionProduct = "Cheese", merchantCountry = "Rwanda", merchantName = "Koelpin - Wunsch", transactionType = "payment" },
    Transaction { currency = "DKK", time =  "2022-01-11T07:54:19.765Z", amount = -14749.13, transactionProduct = "Chips", merchantCountry = "British Indian Ocean Territory (Chagos Archipelago)", merchantName = "Streich Group", transactionType = "deposit" },
    Transaction { currency = "NOK", time =  "2022-01-11T12:49:30.282Z", amount = -16773.06, transactionProduct = "Towels", merchantCountry = "Belgium", merchantName = "Bartell, Braun and Greenholt", transactionType = "invoice" },
    Transaction {
      currency = "NOK",
      time =  "2022-01-12T11:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction { currency = "NOK", time = "2022-01-12T11:55:00.949Z", amount = -4349.19, transactionProduct = "Shoes", merchantCountry = "Swaziland", merchantName = "Buckridge, Lindgren and West", transactionType = "invoice" },
    Transaction { currency = "NOK", time =  "2022-01-12T15:51:06.779Z", amount = -2390.03, transactionProduct = "Chair", merchantCountry = "Namibia", merchantName = "Schroeder LLC", transactionType = "deposit" },
    Transaction { currency = "NOK", time =  "2022-01-12T19:55:27.767Z", amount = -18849.29, transactionProduct = "Fish", merchantCountry = "Canada", merchantName = "Reichel, Cremin and Orn", transactionType = "deposit" },
    Transaction { currency = "SEK", time =  "2022-01-13T10:35:48.774Z", amount = -26348.88, transactionProduct = "Chair", merchantCountry = "Nicaragua", merchantName = "Wyman, Hyatt and Ullrich", transactionType = "deposit" },
    Transaction { currency = "GBP", time =  "2022-01-13T11:31:57.285Z", amount = -4596.38, transactionProduct = "Gloves", merchantCountry = "Barbados", merchantName = "Russel, Pfannerstill and Block", transactionType = "deposit" },
    Transaction { currency = "DKK", time =  "2022-01-13T17:15:26.824Z", amount = -7864.47, transactionProduct = "Tuna", merchantCountry = "Serbia", merchantName = "Smith Inc", transactionType = "deposit" },
    Transaction { currency = "EUR", time =  "2022-01-13T20:05:55.616Z", amount = -25733.32, transactionProduct = "Bacon", merchantCountry = "Mexico", merchantName = "Hyatt Inc", transactionType = "withdrawal" },
    Transaction { currency = "SEK", time =  "2022-01-14T04:56:17.871Z", amount = -15696.4, transactionProduct = "Towels", merchantCountry = "Tanzania", merchantName = "Hirthe - Block", transactionType = "invoice" },
    Transaction { currency = "EUR", time =  "2022-01-14T15:49:00.697Z", amount = -25475.26, transactionProduct = "Mouse", merchantCountry = "Belarus", merchantName = "Larson - Cassin", transactionType = "invoice" },
    Transaction { currency = "SEK", time =  "2022-01-15T00:29:41.326Z", amount = -21804.85, transactionProduct = "Shoes", merchantCountry = "Western Sahara", merchantName = "Lebsack - Dickens", transactionType = "invoice" },
    Transaction { currency = "DKK", time =  "2022-01-15T01:13:46.031Z", amount = -28167.78, transactionProduct = "Fish", merchantCountry = "South Africa", merchantName = "Kihn - Carter", transactionType = "payment" },
    Transaction { currency = "SEK", time =  "2022-01-15T08:19:21.325Z", amount = -13312.05, transactionProduct = "Car", merchantCountry = "Cayman Islands", merchantName = "Parisian and Sons", transactionType = "withdrawal" },
    Transaction { currency = "NOK", time =  "2022-01-15T18:18:20.421Z", amount = -29848.03, transactionProduct = "Chicken", merchantCountry = "Ireland", merchantName = "Schmeler, Gleichner and Abbott", transactionType = "invoice" },
    Transaction { currency = "NOK", time =  "2022-01-15T21:55:45.175Z", amount = -27633.57, transactionProduct = "Cheese", merchantCountry = "Comoros", merchantName = "Torp, Schuster and Kris", transactionType = "deposit" },
    Transaction { currency = "SEK", time =  "2022-01-16T00:43:32.050Z", amount = -26325.89, transactionProduct = "Salad", merchantCountry = "Norway", merchantName = "Greenholt - Bednar", transactionType = "withdrawal" },
    Transaction { currency = "DKK", time =  "2022-01-16T03:53:09.451Z", amount = -15228.2, transactionProduct = "Pizza", merchantCountry = "Christmas Island", merchantName = "Jaskolski, Goyette and Fadel", transactionType = "withdrawal" },
    Transaction { currency = "SEK", time =  "2022-01-16T06:10:00.710Z", amount = -24500.29, transactionProduct = "Ball", merchantCountry = "Morocco", merchantName = "Stroman Group", transactionType = "invoice" },
    Transaction { currency = "GBP", time =  "2022-01-17T02:16:32.784Z", amount = -11287.38, transactionProduct = "Towels", merchantCountry = "Dominican Republic", merchantName = "Collins Inc", transactionType = "deposit" },
    Transaction { currency = "SEK", time =  "2022-01-17T08:04:04.377Z", amount = -13312.37, transactionProduct = "Shoes", merchantCountry = "Ecuador", merchantName = "Tromp - Jerde", transactionType = "deposit" },
    Transaction { currency = "NOK", time =  "2022-01-18T00:58:41.752Z", amount = -3363.03, transactionProduct = "Hat", merchantCountry = "Guernsey", merchantName = "Skiles LLC", transactionType = "deposit" },
    Transaction { currency = "USD", time =  "2022-01-18T02:58:12.425Z", amount = -23885.93, transactionProduct = "Car", merchantCountry = "Samoa", merchantName = "Connelly - Miller", transactionType = "deposit" },
    Transaction { currency = "SEK", time =  "2022-01-18T03:59:14.586Z", amount = -7522.96, transactionProduct = "Bike", merchantCountry = "Venezuela", merchantName = "Sporer LLC", transactionType = "deposit" },
    Transaction { currency = "USD", time =  "2022-01-18T06:03:15.076Z", amount = -6314.04, transactionProduct = "Computer", merchantCountry = "Netherlands", merchantName = "Williamson Inc", transactionType = "invoice" },
    Transaction {
      currency = "USD",
      time = "2022-01-18T07:26:56.144Z",
      amount = -21116.56,
      transactionProduct = "Hat",
      merchantCountry = "Guinea-Bissau",
      merchantName = "Bechtelar Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-18T11:06:09.583Z",
      amount = -4011.38,
      transactionProduct = "Gloves",
      merchantCountry = "Portugal",
      merchantName = "Powlowski, Murray and Rogahn",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-18T18:44:04.345Z",
      amount = -17231.15,
      transactionProduct = "Pizza",
      merchantCountry = "Montenegro",
      merchantName = "Anderson, Torp and Lowe",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-19T08:23:11.178Z",
      amount = -24554.53,
      transactionProduct = "Ball",
      merchantCountry = "Venezuela",
      merchantName = "Skiles, Koepp and Lindgren",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-01-19T08:57:24.719Z",
      amount = -16672.51,
      transactionProduct = "Soap",
      merchantCountry = "Mali",
      merchantName = "Ward and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-19T18:16:10.158Z",
      amount = -20122.78,
      transactionProduct = "Table",
      merchantCountry = "Niue",
      merchantName = "Spencer LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-19T22:23:03.982Z",
      amount = -11869.77,
      transactionProduct = "Mouse",
      merchantCountry = "Indonesia",
      merchantName = "Kautzer Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-20T01:26:42.554Z",
      amount = -17314.99,
      transactionProduct = "Towels",
      merchantCountry = "Guatemala",
      merchantName = "West, Emard and Von",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-01-20T04:21:08.099Z",
      amount = -20551.47,
      transactionProduct = "Sausages",
      merchantCountry = "Kiribati",
      merchantName = "Mueller - Weimann",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-01-20T05:05:12.569Z",
      amount = -29827.45,
      transactionProduct = "Chicken",
      merchantCountry = "Reunion",
      merchantName = "Muller, Kshlerin and Kassulke",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-01-20T14:46:23.148Z",
      amount = -24948.79,
      transactionProduct = "Shoes",
      merchantCountry = "Western Sahara",
      merchantName = "Macejkovic, Reichel and Jacobson",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-01-20T19:32:56.177Z",
      amount = -27493.52,
      transactionProduct = "Chips",
      merchantCountry = "Switzerland",
      merchantName = "Franecki, Spinka and Walter",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-20T20:50:09.868Z",
      amount = -20166.26,
      transactionProduct = "Chips",
      merchantCountry = "Montenegro",
      merchantName = "Ryan - Langworth",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-21T03:59:15.092Z",
      amount = -2028.67,
      transactionProduct = "Pizza",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Hamill, Dicki and Turner",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-01-21T20:12:35.018Z",
      amount = -1859.58,
      transactionProduct = "Car",
      merchantCountry = "Sao Tome and Principe",
      merchantName = "Abbott - Halvorson",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-01-22T01:31:56.672Z",
      amount = -29341.73,
      transactionProduct = "Gloves",
      merchantCountry = "Hong Kong",
      merchantName = "Schumm LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-22T02:19:44.950Z",
      amount = -11283.37,
      transactionProduct = "Mouse",
      merchantCountry = "Tajikistan",
      merchantName = "Durgan and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-22T08:26:33.545Z",
      amount = -2902.9,
      transactionProduct = "Fish",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "Lueilwitz - Bauch",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-01-22T09:34:44.658Z",
      amount = -10586.37,
      transactionProduct = "Mouse",
      merchantCountry = "Democratic People's Republic of Korea",
      merchantName = "Crooks, Boyer and Heathcote",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-22T12:41:32.007Z",
      amount = -25303.17,
      transactionProduct = "Shoes",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "MacGyver, Bahringer and Predovic",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-01-22T21:31:10.896Z",
      amount = -20703.56,
      transactionProduct = "Chips",
      merchantCountry = "Yemen",
      merchantName = "Powlowski LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-01-22T23:45:59.982Z",
      amount = -21427.13,
      transactionProduct = "Shirt",
      merchantCountry = "Virgin Islands, British",
      merchantName = "Hirthe, Fisher and Mertz",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-01-23T19:09:17.281Z",
      amount = -18270.5,
      transactionProduct = "Fish",
      merchantCountry = "Sierra Leone",
      merchantName = "Buckridge LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-01-24T02:56:18.166Z",
      amount = -1047.85,
      transactionProduct = "Keyboard",
      merchantCountry = "Belize",
      merchantName = "Bailey, Hickle and Grant",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-25T00:12:26.630Z",
      amount = -15316.2,
      transactionProduct = "Chair",
      merchantCountry = "Tuvalu",
      merchantName = "Pollich Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-25T16:19:27.621Z",
      amount = -1504.24,
      transactionProduct = "Chicken",
      merchantCountry = "Switzerland",
      merchantName = "Lemke, Larkin and Haley",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-25T20:22:04.654Z",
      amount = -10590.21,
      transactionProduct = "Sausages",
      merchantCountry = "Malawi",
      merchantName = "Schuster - Littel",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-26T02:25:25.881Z",
      amount = -9621.49,
      transactionProduct = "Computer",
      merchantCountry = "Slovakia (Slovak Republic)",
      merchantName = "Waters - Fay",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-01-26T07:49:58.030Z",
      amount = -8742.06,
      transactionProduct = "Sausages",
      merchantCountry = "Senegal",
      merchantName = "Crooks and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-26T09:03:02.133Z",
      amount = -534.9,
      transactionProduct = "Chicken",
      merchantCountry = "San Marino",
      merchantName = "Ziemann Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-01-26T12:51:39.428Z",
      amount = -3672.27,
      transactionProduct = "Pants",
      merchantCountry = "Argentina",
      merchantName = "Larson Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-26T20:13:38.249Z",
      amount = -3795.4,
      transactionProduct = "Sausages",
      merchantCountry = "Sudan",
      merchantName = "Spinka LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-01-26T20:59:24.427Z",
      amount = -9214.72,
      transactionProduct = "Ball",
      merchantCountry = "Venezuela",
      merchantName = "Howell, Bartell and Bednar",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-28T17:17:55.178Z",
      amount = -24828.24,
      transactionProduct = "Gloves",
      merchantCountry = "Ghana",
      merchantName = "Bauch - Hessel",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-28T23:18:32.974Z",
      amount = -23145.07,
      transactionProduct = "Computer",
      merchantCountry = "Nigeria",
      merchantName = "Borer Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-29T05:29:18.021Z",
      amount = -14927.78,
      transactionProduct = "Pizza",
      merchantCountry = "Gibraltar",
      merchantName = "Denesik, Jast and Maggio",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-29T08:48:33.568Z",
      amount = -13466.34,
      transactionProduct = "Towels",
      merchantCountry = "Senegal",
      merchantName = "Bogisich, Schaefer and Quigley",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-01-29T09:23:08.124Z",
      amount = -15491.48,
      transactionProduct = "Chicken",
      merchantCountry = "Tonga",
      merchantName = "Cole and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-01-30T01:26:33.545Z",
      amount = -6304.36,
      transactionProduct = "Gloves",
      merchantCountry = "Indonesia",
      merchantName = "Kris LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-30T07:28:13.981Z",
      amount = -7404.67,
      transactionProduct = "Sausages",
      merchantCountry = "New Caledonia",
      merchantName = "Kovacek, Auer and Bradtke",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-01-30T15:56:49.673Z",
      amount = -1208.55,
      transactionProduct = "Chips",
      merchantCountry = "Timor-Leste",
      merchantName = "Lowe, Muller and McDermott",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-01-30T16:43:48.513Z",
      amount = -19733.94,
      transactionProduct = "Tuna",
      merchantCountry = "Israel",
      merchantName = "Morar, Reynolds and Crist",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-01-30T19:50:41.178Z",
      amount = -27029.68,
      transactionProduct = "Cheese",
      merchantCountry = "Mozambique",
      merchantName = "O'Hara and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-01-31T08:39:57.582Z",
      amount = -18782.71,
      transactionProduct = "Gloves",
      merchantCountry = "Czech Republic",
      merchantName = "Lynch - Morissette",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-01T07:35:58.255Z",
      amount = -7028.87,
      transactionProduct = "Pizza",
      merchantCountry = "Mozambique",
      merchantName = "Stokes, Bode and Abernathy",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-01T08:39:49.243Z",
      amount = -7100.85,
      transactionProduct = "Bike",
      merchantCountry = "Bolivia",
      merchantName = "Leannon, Wisozk and Ruecker",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-01T08:42:04.126Z",
      amount = -4361.1,
      transactionProduct = "Tuna",
      merchantCountry = "Macedonia",
      merchantName = "Schowalter, Jakubowski and Anderson",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-02-01T13:03:36.331Z",
      amount = -11748.31,
      transactionProduct = "Pants",
      merchantCountry = "South Africa",
      merchantName = "Price, Kerluke and Bartoletti",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-02T11:51:50.172Z",
      amount = -14243.78,
      transactionProduct = "Ball",
      merchantCountry = "Western Sahara",
      merchantName = "Will, Raynor and Wiza",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-03T01:06:27.776Z",
      amount = -9691.19,
      transactionProduct = "Table",
      merchantCountry = "Grenada",
      merchantName = "Green Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-03T05:05:05.831Z",
      amount = -28714.99,
      transactionProduct = "Ball",
      merchantCountry = "Australia",
      merchantName = "Terry - Kemmer",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-03T15:57:15.873Z",
      amount = -15879.39,
      transactionProduct = "Chicken",
      merchantCountry = "Nicaragua",
      merchantName = "Orn Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-03T18:13:18.120Z",
      amount = -21298.93,
      transactionProduct = "Pants",
      merchantCountry = "Saint Martin",
      merchantName = "Kuvalis - Simonis",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-04T11:38:38.312Z",
      amount = -5462.26,
      transactionProduct = "Bike",
      merchantCountry = "British Indian Ocean Territory (Chagos Archipelago)",
      merchantName = "Collier - McCullough",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-04T21:50:36.423Z",
      amount = -6430.26,
      transactionProduct = "Bacon",
      merchantCountry = "Burundi",
      merchantName = "Kihn, Bogisich and Dickinson",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-04T23:47:12.453Z",
      amount = -28282.18,
      transactionProduct = "Car",
      merchantCountry = "Malta",
      merchantName = "Hahn LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-05T14:16:41.449Z",
      amount = -24558.47,
      transactionProduct = "Mouse",
      merchantCountry = "Turks and Caicos Islands",
      merchantName = "Sporer - Smitham",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-05T19:29:23.251Z",
      amount = -25190.74,
      transactionProduct = "Chicken",
      merchantCountry = "Syrian Arab Republic",
      merchantName = "Oberbrunner and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-06T01:33:36.485Z",
      amount = -4423.34,
      transactionProduct = "Ball",
      merchantCountry = "Cuba",
      merchantName = "Beer and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-06T06:26:47.128Z",
      amount = -15572.83,
      transactionProduct = "Ball",
      merchantCountry = "Mayotte",
      merchantName = "Boyer - Ortiz",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-06T12:52:13.633Z",
      amount = -15596.43,
      transactionProduct = "Tuna",
      merchantCountry = "French Southern Territories",
      merchantName = "Stracke LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-06T18:01:42.428Z",
      amount = -16620.34,
      transactionProduct = "Bike",
      merchantCountry = "Greece",
      merchantName = "Kuhic - Konopelski",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-06T19:47:45.744Z",
      amount = -2823.87,
      transactionProduct = "Car",
      merchantCountry = "Northern Mariana Islands",
      merchantName = "Will, Goodwin and Kub",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-07T17:04:15.618Z",
      amount = -24152.51,
      transactionProduct = "Towels",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Brakus and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-07T19:19:57.718Z",
      amount = -6560.85,
      transactionProduct = "Pants",
      merchantCountry = "Guam",
      merchantName = "Schowalter Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-02-08T06:50:07.246Z",
      amount = -24928.94,
      transactionProduct = "Salad",
      merchantCountry = "Faroe Islands",
      merchantName = "Raynor Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-08T18:58:38.589Z",
      amount = -29561.95,
      transactionProduct = "Pizza",
      merchantCountry = "Vanuatu",
      merchantName = "Gleason and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-08T20:40:01.089Z",
      amount = -17730.68,
      transactionProduct = "Mouse",
      merchantCountry = "Svalbard & Jan Mayen Islands",
      merchantName = "Paucek, Gislason and Buckridge",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-08T22:34:30.564Z",
      amount = -23552.91,
      transactionProduct = "Bike",
      merchantCountry = "Somalia",
      merchantName = "Gibson LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-09T03:56:04.905Z",
      amount = -15457.04,
      transactionProduct = "Pizza",
      merchantCountry = "Kyrgyz Republic",
      merchantName = "Stark, Swift and Goyette",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-02-10T02:34:43.075Z",
      amount = -19713.47,
      transactionProduct = "Pizza",
      merchantCountry = "Puerto Rico",
      merchantName = "Steuber, Nitzsche and Christiansen",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-10T05:17:03.522Z",
      amount = -12493.21,
      transactionProduct = "Car",
      merchantCountry = "Cambodia",
      merchantName = "O'Connell - Langosh",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-10T10:27:16.931Z",
      amount = -12194.95,
      transactionProduct = "Towels",
      merchantCountry = "Pakistan",
      merchantName = "Mann - Wilderman",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-10T12:49:43.825Z",
      amount = -18453.44,
      transactionProduct = "Towels",
      merchantCountry = "Guinea",
      merchantName = "Kihn - Johns",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-10T17:29:32.794Z",
      amount = -4274.65,
      transactionProduct = "Mouse",
      merchantCountry = "South Georgia and the South Sandwich Islands",
      merchantName = "Dooley - Gerhold",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-02-11T13:22:11.460Z",
      amount = -14924.59,
      transactionProduct = "Pants",
      merchantCountry = "Macedonia",
      merchantName = "Hane, Collins and Bailey",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-12T11:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-12T12:07:26.421Z",
      amount = -21742.32,
      transactionProduct = "Table",
      merchantCountry = "Russian Federation",
      merchantName = "Champlin, Walsh and Bode",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-12T18:09:43.503Z",
      amount = -16334.94,
      transactionProduct = "Bacon",
      merchantCountry = "Niger",
      merchantName = "Mertz Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-12T22:27:36.894Z",
      amount = -19865.2,
      transactionProduct = "Chair",
      merchantCountry = "Djibouti",
      merchantName = "Bergnaum - Daniel",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-13T01:45:07.089Z",
      amount = -27122.08,
      transactionProduct = "Soap",
      merchantCountry = "Jamaica",
      merchantName = "Okuneva Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-13T03:59:52.445Z",
      amount = -12243.14,
      transactionProduct = "Shirt",
      merchantCountry = "Isle of Man",
      merchantName = "O'Reilly - Gislason",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-13T08:01:52.538Z",
      amount = -26329.3,
      transactionProduct = "Hat",
      merchantCountry = "Tunisia",
      merchantName = "Lindgren - Gleason",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-13T12:08:40.135Z",
      amount = -249.61,
      transactionProduct = "Bacon",
      merchantCountry = "Greenland",
      merchantName = "O'Connell - Frami",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-13T23:07:48.394Z",
      amount = -22718.62,
      transactionProduct = "Salad",
      merchantCountry = "Russian Federation",
      merchantName = "Harber - Herman",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-14T00:28:13.652Z",
      amount = -22372.73,
      transactionProduct = "Pants",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Swift - Schmitt",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-14T05:04:03.907Z",
      amount = -20269.06,
      transactionProduct = "Towels",
      merchantCountry = "Vanuatu",
      merchantName = "Gutmann - Wyman",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-14T15:11:19.095Z",
      amount = -27016.29,
      transactionProduct = "Chips",
      merchantCountry = "Kuwait",
      merchantName = "Rippin, Smith and Dooley",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-15T08:05:07.223Z",
      amount = -19075.88,
      transactionProduct = "Mouse",
      merchantCountry = "United Arab Emirates",
      merchantName = "Moen LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-15T13:58:02.145Z",
      amount = -7081.84,
      transactionProduct = "Table",
      merchantCountry = "Japan",
      merchantName = "Abshire - Windler",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-16T07:52:42.522Z",
      amount = -12833.14,
      transactionProduct = "Bike",
      merchantCountry = "Martinique",
      merchantName = "Nienow, Trantow and Cruickshank",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-17T08:04:14.919Z",
      amount = -14640.29,
      transactionProduct = "Chicken",
      merchantCountry = "Bermuda",
      merchantName = "Langworth - Marvin",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-17T22:25:22.926Z",
      amount = -15598.56,
      transactionProduct = "Cheese",
      merchantCountry = "Trinidad and Tobago",
      merchantName = "Schroeder Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-18T04:30:12.726Z",
      amount = -14719.83,
      transactionProduct = "Fish",
      merchantCountry = "Mexico",
      merchantName = "Heidenreich - Ratke",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-18T22:57:04.479Z",
      amount = -23571.72,
      transactionProduct = "Tuna",
      merchantCountry = "Belgium",
      merchantName = "Orn LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-20T10:02:39.127Z",
      amount = -29938.07,
      transactionProduct = "Salad",
      merchantCountry = "Jordan",
      merchantName = "Kassulke - Wisozk",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-20T14:09:21.136Z",
      amount = -16079.26,
      transactionProduct = "Salad",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Schumm and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-20T17:15:59.270Z",
      amount = -28583.36,
      transactionProduct = "Soap",
      merchantCountry = "Spain",
      merchantName = "Legros - Mosciski",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-02-21T06:22:29.872Z",
      amount = -16875.57,
      transactionProduct = "Pizza",
      merchantCountry = "Peru",
      merchantName = "Boehm Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-21T09:39:07.583Z",
      amount = -26456.42,
      transactionProduct = "Chicken",
      merchantCountry = "Comoros",
      merchantName = "Mills Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-02-22T04:36:38.806Z",
      amount = -17090.78,
      transactionProduct = "Gloves",
      merchantCountry = "Dominica",
      merchantName = "Wiza LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-22T05:50:00.641Z",
      amount = -18858.08,
      transactionProduct = "Shirt",
      merchantCountry = "Guinea-Bissau",
      merchantName = "Trantow - Reichel",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-02-22T08:45:46.396Z",
      amount = -1702.68,
      transactionProduct = "Bike",
      merchantCountry = "Morocco",
      merchantName = "Shields LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-22T14:47:21.464Z",
      amount = -7793.1,
      transactionProduct = "Salad",
      merchantCountry = "Israel",
      merchantName = "Farrell, Haley and Swift",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-23T13:56:52.886Z",
      amount = -2083.51,
      transactionProduct = "Towels",
      merchantCountry = "Sri Lanka",
      merchantName = "Stoltenberg and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-02-23T23:57:12.045Z",
      amount = -13734.89,
      transactionProduct = "Shirt",
      merchantCountry = "Bulgaria",
      merchantName = "Heathcote - Hettinger",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-24T00:47:11.505Z",
      amount = -29307.18,
      transactionProduct = "Table",
      merchantCountry = "Nigeria",
      merchantName = "King Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-02-24T19:36:45.000Z",
      amount = -16027.26,
      transactionProduct = "Salad",
      merchantCountry = "San Marino",
      merchantName = "Zulauf - Kilback",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-25T07:22:07.816Z",
      amount = -3760.04,
      transactionProduct = "Pizza",
      merchantCountry = "Ecuador",
      merchantName = "Predovic - Heaney",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-02-26T07:25:57.537Z",
      amount = -6732.97,
      transactionProduct = "Pants",
      merchantCountry = "Armenia",
      merchantName = "Marvin, Glover and Kris",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-02-26T17:54:32.384Z",
      amount = -21344.8,
      transactionProduct = "Towels",
      merchantCountry = "Poland",
      merchantName = "Conroy - Lebsack",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-02-27T20:49:22.801Z",
      amount = -29269.93,
      transactionProduct = "Bacon",
      merchantCountry = "Mozambique",
      merchantName = "Larkin Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-01T03:53:23.687Z",
      amount = -23608.19,
      transactionProduct = "Bike",
      merchantCountry = "Syrian Arab Republic",
      merchantName = "Waters Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-01T15:03:58.547Z",
      amount = -3083.39,
      transactionProduct = "Computer",
      merchantCountry = "Jordan",
      merchantName = "Lesch, Kshlerin and Torphy",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-02T06:51:48.690Z",
      amount = -27741.15,
      transactionProduct = "Chicken",
      merchantCountry = "Singapore",
      merchantName = "Marks - Strosin",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-02T10:31:25.816Z",
      amount = -11558.66,
      transactionProduct = "Soap",
      merchantCountry = "Lao People's Democratic Republic",
      merchantName = "Sanford - Wiegand",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-02T11:31:16.277Z",
      amount = -6318.81,
      transactionProduct = "Computer",
      merchantCountry = "Kazakhstan",
      merchantName = "Kunde Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-02T13:02:46.197Z",
      amount = -4733.47,
      transactionProduct = "Towels",
      merchantCountry = "Chad",
      merchantName = "O'Conner and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-03T00:51:05.873Z",
      amount = -19550.44,
      transactionProduct = "Chips",
      merchantCountry = "Virgin Islands, U.S.",
      merchantName = "Braun - Jacobson",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-03T05:16:03.721Z",
      amount = -1880.72,
      transactionProduct = "Soap",
      merchantCountry = "Central African Republic",
      merchantName = "Bernier and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-03T09:19:31.271Z",
      amount = -25052,
      transactionProduct = "Towels",
      merchantCountry = "Western Sahara",
      merchantName = "Crona, Willms and Lesch",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-03T15:28:08.521Z",
      amount = -2960.13,
      transactionProduct = "Hat",
      merchantCountry = "Turkey",
      merchantName = "Bartell - Kohler",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-03T15:46:35.807Z",
      amount = -18656.27,
      transactionProduct = "Chips",
      merchantCountry = "Lithuania",
      merchantName = "Jacobi Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-04T02:41:27.678Z",
      amount = -17525.42,
      transactionProduct = "Soap",
      merchantCountry = "Spain",
      merchantName = "Steuber Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-04T02:41:45.954Z",
      amount = -23149.27,
      transactionProduct = "Gloves",
      merchantCountry = "Ghana",
      merchantName = "Ward - Kemmer",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-05T07:56:50.372Z",
      amount = -6084.59,
      transactionProduct = "Car",
      merchantCountry = "Cambodia",
      merchantName = "Pollich, Lakin and Hane",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-05T16:30:14.274Z",
      amount = -12450.95,
      transactionProduct = "Shirt",
      merchantCountry = "Trinidad and Tobago",
      merchantName = "Lowe and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-05T17:14:09.183Z",
      amount = -23115.19,
      transactionProduct = "Chicken",
      merchantCountry = "Burundi",
      merchantName = "Stamm - Stehr",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-06T21:13:45.475Z",
      amount = -7195.92,
      transactionProduct = "Pizza",
      merchantCountry = "Georgia",
      merchantName = "Bogan Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-07T05:35:46.079Z",
      amount = -13129.15,
      transactionProduct = "Shoes",
      merchantCountry = "Svalbard & Jan Mayen Islands",
      merchantName = "Kuphal - O'Keefe",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-08T13:42:33.111Z",
      amount = -16124.39,
      transactionProduct = "Ball",
      merchantCountry = "Malta",
      merchantName = "Huel - Bogan",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-08T18:59:32.262Z",
      amount = -4548.92,
      transactionProduct = "Bike",
      merchantCountry = "Mauritius",
      merchantName = "Beatty LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-09T06:42:46.980Z",
      amount = -22002.97,
      transactionProduct = "Car",
      merchantCountry = "Saint Pierre and Miquelon",
      merchantName = "Armstrong, Quitzon and Hammes",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-09T09:00:33.579Z",
      amount = -16044.6,
      transactionProduct = "Sausages",
      merchantCountry = "Chile",
      merchantName = "Stiedemann, Ledner and Friesen",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-09T09:14:54.684Z",
      amount = -3844.78,
      transactionProduct = "Car",
      merchantCountry = "Mauritius",
      merchantName = "Runte and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-09T18:49:21.988Z",
      amount = -29702.47,
      transactionProduct = "Computer",
      merchantCountry = "Croatia",
      merchantName = "Rowe, Russel and Cole",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-09T21:43:00.673Z",
      amount = -12145.21,
      transactionProduct = "Hat",
      merchantCountry = "Guinea-Bissau",
      merchantName = "Keeling Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-09T23:04:32.388Z",
      amount = -6498.06,
      transactionProduct = "Cheese",
      merchantCountry = "Guinea",
      merchantName = "Fadel, Abernathy and Toy",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-11T00:09:49.603Z",
      amount = -6134.52,
      transactionProduct = "Shirt",
      merchantCountry = "Saint Pierre and Miquelon",
      merchantName = "Terry - Olson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-11T01:57:16.624Z",
      amount = -8273.59,
      transactionProduct = "Car",
      merchantCountry = "Cape Verde",
      merchantName = "Larson, Abernathy and Gulgowski",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-11T09:07:32.579Z",
      amount = -5447.82,
      transactionProduct = "Table",
      merchantCountry = "Syrian Arab Republic",
      merchantName = "Kautzer - Larson",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-11T12:35:21.296Z",
      amount = -23265.94,
      transactionProduct = "Computer",
      merchantCountry = "Estonia",
      merchantName = "MacGyver LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-11T13:37:51.943Z",
      amount = -12579.7,
      transactionProduct = "Soap",
      merchantCountry = "Benin",
      merchantName = "Hegmann - Kozey",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-11T13:44:32.266Z",
      amount = -13963.12,
      transactionProduct = "Cheese",
      merchantCountry = "Mali",
      merchantName = "Thompson, Becker and Kulas",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-11T17:25:21.319Z",
      amount = -21326.53,
      transactionProduct = "Chicken",
      merchantCountry = "Heard Island and McDonald Islands",
      merchantName = "Torphy - Doyle",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-11T17:51:24.562Z",
      amount = -12997.21,
      transactionProduct = "Bacon",
      merchantCountry = "Vietnam",
      merchantName = "Raynor and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-12T11:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-12T17:56:41.337Z",
      amount = -8616.29,
      transactionProduct = "Shirt",
      merchantCountry = "Peru",
      merchantName = "Bosco, Grant and Wolf",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-13T05:55:07.184Z",
      amount = -21166.89,
      transactionProduct = "Table",
      merchantCountry = "Uruguay",
      merchantName = "Zulauf - Kulas",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-13T14:07:13.402Z",
      amount = -13065.93,
      transactionProduct = "Pizza",
      merchantCountry = "Ireland",
      merchantName = "Leannon LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-13T14:20:57.838Z",
      amount = -13377.66,
      transactionProduct = "Keyboard",
      merchantCountry = "Haiti",
      merchantName = "Bruen, Muller and Buckridge",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-13T16:05:51.818Z",
      amount = -20326.57,
      transactionProduct = "Towels",
      merchantCountry = "Mali",
      merchantName = "Jacobson - Abshire",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-13T23:19:44.070Z",
      amount = -9060,
      transactionProduct = "Sausages",
      merchantCountry = "Argentina",
      merchantName = "Bergstrom - Jast",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-14T00:37:58.711Z",
      amount = -14546.81,
      transactionProduct = "Sausages",
      merchantCountry = "Somalia",
      merchantName = "Kuvalis Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-15T19:14:30.433Z",
      amount = -3984.09,
      transactionProduct = "Ball",
      merchantCountry = "Central African Republic",
      merchantName = "Pouros - Conn",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-15T21:43:34.808Z",
      amount = -8140.69,
      transactionProduct = "Soap",
      merchantCountry = "Mexico",
      merchantName = "Donnelly, Larson and Moore",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-16T16:09:17.233Z",
      amount = -25908.88,
      transactionProduct = "Chips",
      merchantCountry = "Sierra Leone",
      merchantName = "O'Connell Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-18T15:58:24.786Z",
      amount = -14271.31,
      transactionProduct = "Car",
      merchantCountry = "Algeria",
      merchantName = "Herzog, Klein and Simonis",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-19T23:56:08.800Z",
      amount = -24350.65,
      transactionProduct = "Shoes",
      merchantCountry = "Panama",
      merchantName = "Schaden, Rutherford and Shields",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-20T00:04:04.017Z",
      amount = -28986.82,
      transactionProduct = "Bacon",
      merchantCountry = "Grenada",
      merchantName = "Roob, Abernathy and Nader",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-20T06:13:09.888Z",
      amount = -26906.58,
      transactionProduct = "Shoes",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Lindgren Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-20T10:50:19.098Z",
      amount = -26923.93,
      transactionProduct = "Pants",
      merchantCountry = "Uruguay",
      merchantName = "Legros Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-20T15:27:47.252Z",
      amount = -9952.69,
      transactionProduct = "Mouse",
      merchantCountry = "Virgin Islands, U.S.",
      merchantName = "Pouros - Zieme",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-20T21:18:14.787Z",
      amount = -3075.42,
      transactionProduct = "Table",
      merchantCountry = "Gabon",
      merchantName = "Auer - Mertz",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-21T01:01:40.729Z",
      amount = -24721.8,
      transactionProduct = "Mouse",
      merchantCountry = "Switzerland",
      merchantName = "Schaden - Metz",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-21T03:26:26.823Z",
      amount = -23079.5,
      transactionProduct = "Ball",
      merchantCountry = "Republic of Korea",
      merchantName = "Hills - Stark",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-21T03:30:01.541Z",
      amount = -3963.4,
      transactionProduct = "Fish",
      merchantCountry = "Belarus",
      merchantName = "Block - Bogan",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-23T09:31:43.523Z",
      amount = -10022.6,
      transactionProduct = "Sausages",
      merchantCountry = "Senegal",
      merchantName = "Mueller - Bailey",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-24T01:12:06.806Z",
      amount = -7920.55,
      transactionProduct = "Cheese",
      merchantCountry = "Cyprus",
      merchantName = "Christiansen Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-24T03:07:52.731Z",
      amount = -21475.65,
      transactionProduct = "Bacon",
      merchantCountry = "Niue",
      merchantName = "Kuhic - Berge",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-24T19:54:41.415Z",
      amount = -23266.47,
      transactionProduct = "Sausages",
      merchantCountry = "Gibraltar",
      merchantName = "Parisian - Waters",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-25T04:29:37.187Z",
      amount = -23993.29,
      transactionProduct = "Bike",
      merchantCountry = "Saudi Arabia",
      merchantName = "Johns and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-25T09:38:02.293Z",
      amount = -3677.52,
      transactionProduct = "Sausages",
      merchantCountry = "Algeria",
      merchantName = "Schuppe, Sauer and Krajcik",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-25T13:27:05.926Z",
      amount = -27720,
      transactionProduct = "Ball",
      merchantCountry = "Saint Vincent and the Grenadines",
      merchantName = "Jones LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-25T22:11:30.356Z",
      amount = -1384.17,
      transactionProduct = "Pants",
      merchantCountry = "Grenada",
      merchantName = "Turner, Heller and Hegmann",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-26T00:40:59.623Z",
      amount = -13336.66,
      transactionProduct = "Gloves",
      merchantCountry = "Japan",
      merchantName = "Hintz, Littel and Pollich",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-26T00:42:07.431Z",
      amount = -17372.48,
      transactionProduct = "Computer",
      merchantCountry = "Tokelau",
      merchantName = "Rath LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-26T05:50:23.909Z",
      amount = -15832.09,
      transactionProduct = "Bacon",
      merchantCountry = "Pitcairn Islands",
      merchantName = "Johns - Keeling",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-26T08:46:01.170Z",
      amount = -14137.99,
      transactionProduct = "Keyboard",
      merchantCountry = "Fiji",
      merchantName = "Altenwerth - Wunsch",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-26T11:00:23.463Z",
      amount = -29285.03,
      transactionProduct = "Pants",
      merchantCountry = "Nauru",
      merchantName = "Dibbert - Kovacek",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-26T18:09:54.276Z",
      amount = -25110.66,
      transactionProduct = "Salad",
      merchantCountry = "Monaco",
      merchantName = "Wehner, Swaniawski and Kuvalis",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-27T14:41:54.276Z",
      amount = -9415.15,
      transactionProduct = "Bike",
      merchantCountry = "Madagascar",
      merchantName = "Kutch, Wolff and Hauck",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-27T20:05:25.121Z",
      amount = -10158.38,
      transactionProduct = "Mouse",
      merchantCountry = "French Southern Territories",
      merchantName = "Luettgen, Paucek and Fahey",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-27T23:48:38.060Z",
      amount = -10727.26,
      transactionProduct = "Soap",
      merchantCountry = "Gabon",
      merchantName = "Ortiz, Aufderhar and Crist",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-28T05:13:19.879Z",
      amount = -16957.53,
      transactionProduct = "Bike",
      merchantCountry = "Democratic People's Republic of Korea",
      merchantName = "Keeling, Lynch and Dare",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-28T11:26:53.268Z",
      amount = -10462.97,
      transactionProduct = "Sausages",
      merchantCountry = "Antigua and Barbuda",
      merchantName = "Rodriguez - McGlynn",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-03-29T08:25:44.098Z",
      amount = -7085.1,
      transactionProduct = "Pants",
      merchantCountry = "Poland",
      merchantName = "Bechtelar - Torphy",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-29T15:13:11.968Z",
      amount = -23680.78,
      transactionProduct = "Shirt",
      merchantCountry = "Argentina",
      merchantName = "Quigley - Fay",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-30T03:19:15.403Z",
      amount = -26606.84,
      transactionProduct = "Hat",
      merchantCountry = "Fiji",
      merchantName = "Breitenberg Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-30T06:00:16.727Z",
      amount = -22661.84,
      transactionProduct = "Computer",
      merchantCountry = "Serbia",
      merchantName = "Graham Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-03-30T17:50:12.612Z",
      amount = -7573.19,
      transactionProduct = "Tuna",
      merchantCountry = "Montserrat",
      merchantName = "Bogan, Kling and Keeling",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-30T20:38:22.139Z",
      amount = -20448.55,
      transactionProduct = "Pizza",
      merchantCountry = "Guinea-Bissau",
      merchantName = "Little Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-03-31T05:58:28.948Z",
      amount = -17317.02,
      transactionProduct = "Keyboard",
      merchantCountry = "Kenya",
      merchantName = "Lynch and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-03-31T12:56:03.694Z",
      amount = -20132.09,
      transactionProduct = "Bacon",
      merchantCountry = "Jordan",
      merchantName = "Boyer, Bahringer and Simonis",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-31T14:19:44.616Z",
      amount = -10021.31,
      transactionProduct = "Pants",
      merchantCountry = "Gabon",
      merchantName = "Hoppe - Lehner",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-03-31T17:30:19.899Z",
      amount = -11552.46,
      transactionProduct = "Chicken",
      merchantCountry = "Sweden",
      merchantName = "Powlowski and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-03-31T22:09:51.121Z",
      amount = -2704.71,
      transactionProduct = "Chips",
      merchantCountry = "Turkey",
      merchantName = "Morissette LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-01T09:05:25.256Z",
      amount = -28001.74,
      transactionProduct = "Towels",
      merchantCountry = "Grenada",
      merchantName = "Mertz LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-01T21:32:51.721Z",
      amount = -4079.85,
      transactionProduct = "Keyboard",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Wisoky, Kuhlman and Frami",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-02T00:48:59.606Z",
      amount = -3587.63,
      transactionProduct = "Sausages",
      merchantCountry = "Netherlands Antilles",
      merchantName = "Green Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-02T09:31:36.864Z",
      amount = -11250.18,
      transactionProduct = "Hat",
      merchantCountry = "Honduras",
      merchantName = "Hilll and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-02T11:05:21.733Z",
      amount = -26254.73,
      transactionProduct = "Hat",
      merchantCountry = "Equatorial Guinea",
      merchantName = "Gleason - Pouros",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-03T05:41:36.542Z",
      amount = -26186.44,
      transactionProduct = "Keyboard",
      merchantCountry = "Anguilla",
      merchantName = "Mayer Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-03T09:18:41.721Z",
      amount = -18208.8,
      transactionProduct = "Tuna",
      merchantCountry = "Macao",
      merchantName = "Rohan, Runte and Morissette",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-03T11:09:01.608Z",
      amount = -9399.38,
      transactionProduct = "Car",
      merchantCountry = "Luxembourg",
      merchantName = "Schowalter - Pfannerstill",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-03T15:29:34.970Z",
      amount = -29665.51,
      transactionProduct = "Fish",
      merchantCountry = "Puerto Rico",
      merchantName = "Kling, Lesch and Metz",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-03T15:30:43.058Z",
      amount = -9739.98,
      transactionProduct = "Sausages",
      merchantCountry = "Costa Rica",
      merchantName = "Nicolas, Schuster and Bayer",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-03T21:12:04.182Z",
      amount = -24041.32,
      transactionProduct = "Sausages",
      merchantCountry = "Georgia",
      merchantName = "Ryan and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-04T01:20:09.882Z",
      amount = -4986.49,
      transactionProduct = "Fish",
      merchantCountry = "Tuvalu",
      merchantName = "Orn Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-04T04:32:47.397Z",
      amount = -21152.99,
      transactionProduct = "Mouse",
      merchantCountry = "Bulgaria",
      merchantName = "Purdy and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-05T09:32:49.350Z",
      amount = -29420.32,
      transactionProduct = "Towels",
      merchantCountry = "Zimbabwe",
      merchantName = "Dach LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-05T14:13:55.401Z",
      amount = -5359.21,
      transactionProduct = "Salad",
      merchantCountry = "New Caledonia",
      merchantName = "Hermann - McGlynn",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-07T06:28:05.030Z",
      amount = -28843.62,
      transactionProduct = "Mouse",
      merchantCountry = "Costa Rica",
      merchantName = "O'Kon and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-07T17:21:02.292Z",
      amount = -1038.13,
      transactionProduct = "Chips",
      merchantCountry = "American Samoa",
      merchantName = "Osinski LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-08T09:41:19.172Z",
      amount = -22318.67,
      transactionProduct = "Computer",
      merchantCountry = "Virgin Islands, U.S.",
      merchantName = "Towne, Fritsch and Lynch",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-10T06:39:15.228Z",
      amount = -8032.31,
      transactionProduct = "Car",
      merchantCountry = "Italy",
      merchantName = "Bayer, Brakus and Wolf",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-10T07:24:02.241Z",
      amount = -15627.43,
      transactionProduct = "Sausages",
      merchantCountry = "Solomon Islands",
      merchantName = "Lockman Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-10T10:20:19.988Z",
      amount = -9131.9,
      transactionProduct = "Pizza",
      merchantCountry = "China",
      merchantName = "Kovacek, Schowalter and Kub",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-11T01:45:48.272Z",
      amount = -21334.23,
      transactionProduct = "Table",
      merchantCountry = "Turkmenistan",
      merchantName = "Barrows Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-11T13:42:33.527Z",
      amount = -5198.69,
      transactionProduct = "Soap",
      merchantCountry = "Saudi Arabia",
      merchantName = "Effertz - Blick",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-11T18:49:57.242Z",
      amount = -20224.68,
      transactionProduct = "Cheese",
      merchantCountry = "Uganda",
      merchantName = "Zemlak, Beatty and Hauck",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-11T22:03:14.847Z",
      amount = -8458.95,
      transactionProduct = "Fish",
      merchantCountry = "Macedonia",
      merchantName = "D'Amore, Stamm and Hagenes",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-12T08:54:42.441Z",
      amount = -22487.3,
      transactionProduct = "Hat",
      merchantCountry = "Georgia",
      merchantName = "Bosco - McKenzie",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-12T10:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-12T23:00:23.224Z",
      amount = -18132.82,
      transactionProduct = "Ball",
      merchantCountry = "Netherlands",
      merchantName = "Hagenes - Satterfield",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-13T14:04:22.972Z",
      amount = -5752.39,
      transactionProduct = "Ball",
      merchantCountry = "United Arab Emirates",
      merchantName = "Herman, Ullrich and Hayes",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-14T05:19:12.235Z",
      amount = -13380.4,
      transactionProduct = "Fish",
      merchantCountry = "Venezuela",
      merchantName = "Abbott and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-14T09:15:14.188Z",
      amount = -12991.25,
      transactionProduct = "Towels",
      merchantCountry = "Zambia",
      merchantName = "Nolan and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-14T20:15:11.032Z",
      amount = -29828.39,
      transactionProduct = "Hat",
      merchantCountry = "Netherlands",
      merchantName = "Kunde - Hyatt",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-16T01:54:12.621Z",
      amount = -25009.16,
      transactionProduct = "Soap",
      merchantCountry = "Guinea",
      merchantName = "Christiansen - Schneider",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-17T00:32:52.135Z",
      amount = -26762.95,
      transactionProduct = "Shoes",
      merchantCountry = "Guernsey",
      merchantName = "Emmerich Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-17T03:16:07.938Z",
      amount = -21532.9,
      transactionProduct = "Chair",
      merchantCountry = "Congo",
      merchantName = "Cronin and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-17T04:44:28.992Z",
      amount = -27646.28,
      transactionProduct = "Gloves",
      merchantCountry = "Taiwan",
      merchantName = "Pfeffer - Kuhic",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-17T22:50:47.594Z",
      amount = -23920.33,
      transactionProduct = "Chips",
      merchantCountry = "New Zealand",
      merchantName = "Schuppe - Wintheiser",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-18T01:11:53.625Z",
      amount = -17446.9,
      transactionProduct = "Shirt",
      merchantCountry = "Lao People's Democratic Republic",
      merchantName = "Torphy - Bergnaum",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-18T09:30:54.491Z",
      amount = -17227.36,
      transactionProduct = "Sausages",
      merchantCountry = "Kiribati",
      merchantName = "Jast Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-18T20:31:58.292Z",
      amount = -10622.6,
      transactionProduct = "Bike",
      merchantCountry = "Montenegro",
      merchantName = "Price Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-20T16:22:24.097Z",
      amount = -21656.04,
      transactionProduct = "Salad",
      merchantCountry = "Bermuda",
      merchantName = "Cremin - Baumbach",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-21T15:05:31.195Z",
      amount = -8780.29,
      transactionProduct = "Pants",
      merchantCountry = "Saudi Arabia",
      merchantName = "Ruecker, Nicolas and Bauch",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-21T18:56:33.726Z",
      amount = -5847.25,
      transactionProduct = "Chips",
      merchantCountry = "Peru",
      merchantName = "Huels - Parker",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-21T23:54:23.944Z",
      amount = -10925.2,
      transactionProduct = "Table",
      merchantCountry = "Bahrain",
      merchantName = "Braun - Hayes",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-22T08:52:39.029Z",
      amount = -7741.97,
      transactionProduct = "Cheese",
      merchantCountry = "Belarus",
      merchantName = "Conroy - Bartell",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-22T19:53:34.804Z",
      amount = -21659.63,
      transactionProduct = "Salad",
      merchantCountry = "Myanmar",
      merchantName = "Leuschke - Schimmel",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-22T20:00:45.915Z",
      amount = -22704.36,
      transactionProduct = "Pizza",
      merchantCountry = "Turkey",
      merchantName = "Ferry, Wyman and Jacobson",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-23T19:22:10.540Z",
      amount = -19033.3,
      transactionProduct = "Chicken",
      merchantCountry = "Montenegro",
      merchantName = "Kuhn - Hirthe",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-24T07:31:50.360Z",
      amount = -11544.31,
      transactionProduct = "Chair",
      merchantCountry = "Paraguay",
      merchantName = "Ankunding Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-25T01:18:03.463Z",
      amount = -24040.72,
      transactionProduct = "Pants",
      merchantCountry = "Syrian Arab Republic",
      merchantName = "Corkery - Smitham",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-25T12:59:03.658Z",
      amount = -23085.8,
      transactionProduct = "Cheese",
      merchantCountry = "Oman",
      merchantName = "Fisher, Kirlin and Gerlach",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-25T16:50:30.911Z",
      amount = -28217.43,
      transactionProduct = "Car",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Fahey - Mayert",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-25T18:35:34.591Z",
      amount = -7602.34,
      transactionProduct = "Bike",
      merchantCountry = "Democratic People's Republic of Korea",
      merchantName = "Heidenreich, Zemlak and McKenzie",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-26T00:10:29.975Z",
      amount = -27237.99,
      transactionProduct = "Computer",
      merchantCountry = "Guernsey",
      merchantName = "Connelly, Morar and Williamson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-26T11:24:57.697Z",
      amount = -22359.7,
      transactionProduct = "Chicken",
      merchantCountry = "Gibraltar",
      merchantName = "Parisian - Zulauf",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-26T11:38:39.805Z",
      amount = -23131.41,
      transactionProduct = "Cheese",
      merchantCountry = "Canada",
      merchantName = "Macejkovic - Bergnaum",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-26T13:02:13.186Z",
      amount = -29343.18,
      transactionProduct = "Fish",
      merchantCountry = "Bahrain",
      merchantName = "Christiansen, McKenzie and Rempel",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-26T13:35:10.879Z",
      amount = -20216.58,
      transactionProduct = "Cheese",
      merchantCountry = "Republic of Korea",
      merchantName = "Runte - Skiles",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-04-27T04:30:36.253Z",
      amount = -607.01,
      transactionProduct = "Salad",
      merchantCountry = "Jamaica",
      merchantName = "Jacobi and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-27T15:43:22.552Z",
      amount = -12776.39,
      transactionProduct = "Computer",
      merchantCountry = "Solomon Islands",
      merchantName = "Lesch LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-29T07:03:49.824Z",
      amount = -19230.96,
      transactionProduct = "Hat",
      merchantCountry = "Andorra",
      merchantName = "Lehner Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-29T08:34:41.107Z",
      amount = -9429.58,
      transactionProduct = "Car",
      merchantCountry = "Cook Islands",
      merchantName = "Maggio, Kulas and Williamson",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-04-29T15:04:34.338Z",
      amount = -14749.31,
      transactionProduct = "Keyboard",
      merchantCountry = "Anguilla",
      merchantName = "Beatty Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-29T19:33:27.647Z",
      amount = -29061.37,
      transactionProduct = "Chips",
      merchantCountry = "Marshall Islands",
      merchantName = "Doyle Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-29T19:41:34.252Z",
      amount = -19039.3,
      transactionProduct = "Chicken",
      merchantCountry = "Democratic People's Republic of Korea",
      merchantName = "Frami LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-04-30T08:53:36.414Z",
      amount = -2317.73,
      transactionProduct = "Fish",
      merchantCountry = "Sweden",
      merchantName = "Armstrong LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-04-30T11:35:08.165Z",
      amount = -4067.16,
      transactionProduct = "Pizza",
      merchantCountry = "Gambia",
      merchantName = "Runolfsson Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-04-30T19:49:50.390Z",
      amount = -12142.77,
      transactionProduct = "Soap",
      merchantCountry = "United Arab Emirates",
      merchantName = "Nader - Raynor",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-04-30T20:39:33.352Z",
      amount = -22982.32,
      transactionProduct = "Mouse",
      merchantCountry = "Mongolia",
      merchantName = "Gulgowski LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-01T05:17:26.674Z",
      amount = -11902.88,
      transactionProduct = "Computer",
      merchantCountry = "Iceland",
      merchantName = "Runolfsson - Shields",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-01T07:11:58.901Z",
      amount = -7777.31,
      transactionProduct = "Table",
      merchantCountry = "Timor-Leste",
      merchantName = "Franey - Parisian",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-01T14:34:54.208Z",
      amount = -8074.41,
      transactionProduct = "Chips",
      merchantCountry = "Azerbaijan",
      merchantName = "Reinger, Reinger and Rogahn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-01T14:44:27.595Z",
      amount = -9665.88,
      transactionProduct = "Gloves",
      merchantCountry = "Yemen",
      merchantName = "Stroman Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-01T20:10:22.010Z",
      amount = -21291.97,
      transactionProduct = "Chicken",
      merchantCountry = "Guyana",
      merchantName = "Kessler, Gibson and Quigley",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-02T00:56:28.004Z",
      amount = -2013.33,
      transactionProduct = "Computer",
      merchantCountry = "Guinea-Bissau",
      merchantName = "O'Hara Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-02T04:06:58.639Z",
      amount = -20313.08,
      transactionProduct = "Cheese",
      merchantCountry = "Kenya",
      merchantName = "O'Connell, Cummerata and Abbott",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-02T15:32:24.260Z",
      amount = -11077.47,
      transactionProduct = "Chips",
      merchantCountry = "Saint Vincent and the Grenadines",
      merchantName = "Zulauf LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-02T23:34:14.204Z",
      amount = -7220.83,
      transactionProduct = "Computer",
      merchantCountry = "India",
      merchantName = "Larkin - Breitenberg",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-03T00:48:25.050Z",
      amount = -10761.19,
      transactionProduct = "Chair",
      merchantCountry = "Ireland",
      merchantName = "Rogahn - Trantow",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-03T01:01:47.510Z",
      amount = -9635.97,
      transactionProduct = "Pants",
      merchantCountry = "South Georgia and the South Sandwich Islands",
      merchantName = "Schimmel, Bosco and Sporer",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-03T04:04:12.927Z",
      amount = -578.06,
      transactionProduct = "Hat",
      merchantCountry = "Costa Rica",
      merchantName = "Hane Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-03T05:58:28.686Z",
      amount = -27271.7,
      transactionProduct = "Chicken",
      merchantCountry = "Barbados",
      merchantName = "Hermiston, Krajcik and D'Amore",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-03T20:21:12.336Z",
      amount = -3273.76,
      transactionProduct = "Fish",
      merchantCountry = "Andorra",
      merchantName = "Bernhard, Roob and Quitzon",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-03T22:49:16.906Z",
      amount = -10923.61,
      transactionProduct = "Chicken",
      merchantCountry = "San Marino",
      merchantName = "Jacobson - Emard",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-04T07:58:44.818Z",
      amount = -9107.28,
      transactionProduct = "Tuna",
      merchantCountry = "Turkmenistan",
      merchantName = "Effertz Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-04T22:28:49.345Z",
      amount = -23377.18,
      transactionProduct = "Computer",
      merchantCountry = "Dominica",
      merchantName = "Heathcote Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-05T11:27:08.459Z",
      amount = -6047.51,
      transactionProduct = "Bacon",
      merchantCountry = "Montenegro",
      merchantName = "Reynolds - Considine",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-05T15:06:43.588Z",
      amount = -14237.9,
      transactionProduct = "Chips",
      merchantCountry = "Guam",
      merchantName = "Parker LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-05T16:00:48.149Z",
      amount = -14098.95,
      transactionProduct = "Towels",
      merchantCountry = "Paraguay",
      merchantName = "Skiles, Toy and Champlin",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-05T21:51:53.212Z",
      amount = -27534.28,
      transactionProduct = "Ball",
      merchantCountry = "Lebanon",
      merchantName = "Schneider Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-06T10:45:15.394Z",
      amount = -4815.75,
      transactionProduct = "Salad",
      merchantCountry = "Kyrgyz Republic",
      merchantName = "Mertz Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-07T04:04:40.493Z",
      amount = -14031.18,
      transactionProduct = "Bacon",
      merchantCountry = "Mali",
      merchantName = "Cummings - Mitchell",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-07T15:36:40.674Z",
      amount = -7223.61,
      transactionProduct = "Car",
      merchantCountry = "Nepal",
      merchantName = "Leannon Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-08T02:58:11.047Z",
      amount = -512.61,
      transactionProduct = "Sausages",
      merchantCountry = "Nicaragua",
      merchantName = "Bergstrom - Gottlieb",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-08T11:42:26.857Z",
      amount = -6032.42,
      transactionProduct = "Ball",
      merchantCountry = "Oman",
      merchantName = "Keebler Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-09T03:54:14.869Z",
      amount = -29735.77,
      transactionProduct = "Pants",
      merchantCountry = "Spain",
      merchantName = "Goyette Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-09T05:22:21.378Z",
      amount = -23615.05,
      transactionProduct = "Fish",
      merchantCountry = "Netherlands",
      merchantName = "Rohan, Brown and Kreiger",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-09T10:05:19.718Z",
      amount = -5512.63,
      transactionProduct = "Table",
      merchantCountry = "Japan",
      merchantName = "Block - Conn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-09T18:20:41.461Z",
      amount = -26594.64,
      transactionProduct = "Keyboard",
      merchantCountry = "Falkland Islands (Malvinas)",
      merchantName = "Rogahn Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-09T22:00:19.725Z",
      amount = -4692.04,
      transactionProduct = "Keyboard",
      merchantCountry = "Vietnam",
      merchantName = "Kemmer Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-10T15:14:18.176Z",
      amount = -15900.77,
      transactionProduct = "Hat",
      merchantCountry = "Mauritius",
      merchantName = "Keebler Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-10T21:18:26.080Z",
      amount = -7039.8,
      transactionProduct = "Table",
      merchantCountry = "South Georgia and the South Sandwich Islands",
      merchantName = "Morar LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-11T03:51:28.902Z",
      amount = -988.98,
      transactionProduct = "Fish",
      merchantCountry = "Greece",
      merchantName = "Beer - Kunde",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-11T11:36:17.189Z",
      amount = -544.17,
      transactionProduct = "Fish",
      merchantCountry = "Fiji",
      merchantName = "Hodkiewicz LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-11T17:40:16.097Z",
      amount = -8537.49,
      transactionProduct = "Chips",
      merchantCountry = "Malta",
      merchantName = "Labadie, Lind and Gutkowski",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-12T10:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-12T15:01:21.545Z",
      amount = -19408.21,
      transactionProduct = "Computer",
      merchantCountry = "Tunisia",
      merchantName = "Hansen, Witting and Jerde",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-12T19:11:39.551Z",
      amount = -13776.12,
      transactionProduct = "Cheese",
      merchantCountry = "Australia",
      merchantName = "Strosin - Deckow",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-12T21:27:19.322Z",
      amount = -7495.38,
      transactionProduct = "Pizza",
      merchantCountry = "Cocos (Keeling) Islands",
      merchantName = "Stark, Nienow and Moen",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-13T00:05:27.721Z",
      amount = -19757.33,
      transactionProduct = "Tuna",
      merchantCountry = "Greece",
      merchantName = "Lynch - Brown",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-13T18:38:06.572Z",
      amount = -5955.9,
      transactionProduct = "Mouse",
      merchantCountry = "Monaco",
      merchantName = "Schinner - Gleichner",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-14T08:25:48.903Z",
      amount = -5472.93,
      transactionProduct = "Computer",
      merchantCountry = "Equatorial Guinea",
      merchantName = "Terry - Reynolds",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-15T01:37:48.419Z",
      amount = -25514.05,
      transactionProduct = "Mouse",
      merchantCountry = "Guadeloupe",
      merchantName = "Reilly - Lockman",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-15T01:45:15.037Z",
      amount = -10898.18,
      transactionProduct = "Gloves",
      merchantCountry = "Republic of Korea",
      merchantName = "Wolff, Runolfsdottir and Glover",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-15T05:23:27.445Z",
      amount = -25154.67,
      transactionProduct = "Fish",
      merchantCountry = "Saint Helena",
      merchantName = "Howe, Hamill and D'Amore",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-17T03:52:49.302Z",
      amount = -11240.3,
      transactionProduct = "Hat",
      merchantCountry = "Finland",
      merchantName = "Klocko - Douglas",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-17T22:48:20.144Z",
      amount = -20435.46,
      transactionProduct = "Salad",
      merchantCountry = "Marshall Islands",
      merchantName = "Turcotte, Wilderman and Sawayn",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-18T07:19:35.280Z",
      amount = -27333.36,
      transactionProduct = "Soap",
      merchantCountry = "Sri Lanka",
      merchantName = "Mosciski - Durgan",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-18T13:35:21.870Z",
      amount = -2251.92,
      transactionProduct = "Tuna",
      merchantCountry = "Namibia",
      merchantName = "Heaney Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-19T01:21:41.731Z",
      amount = -27215.94,
      transactionProduct = "Table",
      merchantCountry = "Burkina Faso",
      merchantName = "Larson, McKenzie and Price",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-20T01:02:37.148Z",
      amount = -9875.99,
      transactionProduct = "Bacon",
      merchantCountry = "Romania",
      merchantName = "Hagenes, Kunde and Lakin",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-20T21:13:55.023Z",
      amount = -10472.6,
      transactionProduct = "Pants",
      merchantCountry = "Bermuda",
      merchantName = "Reilly LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-20T22:56:05.441Z",
      amount = -9434.76,
      transactionProduct = "Pizza",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Waters, McClure and Feest",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-21T09:27:29.166Z",
      amount = -822.53,
      transactionProduct = "Tuna",
      merchantCountry = "Poland",
      merchantName = "Wolf, Schaden and Sipes",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-21T11:07:06.308Z",
      amount = -21519.22,
      transactionProduct = "Bacon",
      merchantCountry = "Malaysia",
      merchantName = "Thompson Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-21T13:03:56.025Z",
      amount = -18963.34,
      transactionProduct = "Mouse",
      merchantCountry = "Bulgaria",
      merchantName = "McKenzie Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-21T13:43:22.469Z",
      amount = -21327.22,
      transactionProduct = "Cheese",
      merchantCountry = "Dominican Republic",
      merchantName = "Thompson LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-21T13:45:35.714Z",
      amount = -3297.45,
      transactionProduct = "Keyboard",
      merchantCountry = "Colombia",
      merchantName = "Durgan, Schimmel and Nitzsche",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-21T17:05:18.450Z",
      amount = -24253.35,
      transactionProduct = "Table",
      merchantCountry = "Tanzania",
      merchantName = "Rolfson Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-21T17:53:10.891Z",
      amount = -27185.41,
      transactionProduct = "Chips",
      merchantCountry = "Senegal",
      merchantName = "Kreiger - Cruickshank",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-21T21:56:12.191Z",
      amount = -16038.63,
      transactionProduct = "Ball",
      merchantCountry = "Sweden",
      merchantName = "D'Amore and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-22T13:00:58.602Z",
      amount = -6990.26,
      transactionProduct = "Shoes",
      merchantCountry = "Somalia",
      merchantName = "Hilpert, Kertzmann and Purdy",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-22T19:27:53.254Z",
      amount = -5109.96,
      transactionProduct = "Bacon",
      merchantCountry = "French Southern Territories",
      merchantName = "Conroy, Dickens and Hartmann",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-23T05:54:15.171Z",
      amount = -6084.37,
      transactionProduct = "Sausages",
      merchantCountry = "Swaziland",
      merchantName = "Halvorson Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-23T09:49:26.299Z",
      amount = -26136.79,
      transactionProduct = "Chair",
      merchantCountry = "Equatorial Guinea",
      merchantName = "Murphy Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-24T05:51:46.002Z",
      amount = -2580.04,
      transactionProduct = "Computer",
      merchantCountry = "United States of America",
      merchantName = "Cormier Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-24T11:38:26.557Z",
      amount = -2010.97,
      transactionProduct = "Pants",
      merchantCountry = "Luxembourg",
      merchantName = "Lockman, Beahan and McKenzie",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-24T14:25:30.706Z",
      amount = -8918.92,
      transactionProduct = "Cheese",
      merchantCountry = "Democratic People's Republic of Korea",
      merchantName = "Larson - Hyatt",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-26T02:01:33.361Z",
      amount = -6368.59,
      transactionProduct = "Keyboard",
      merchantCountry = "Swaziland",
      merchantName = "Rippin, Macejkovic and Green",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-26T04:35:43.370Z",
      amount = -6792.21,
      transactionProduct = "Tuna",
      merchantCountry = "Jersey",
      merchantName = "Conroy and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-26T11:49:27.905Z",
      amount = -21570.58,
      transactionProduct = "Tuna",
      merchantCountry = "Sri Lanka",
      merchantName = "Wiegand - Harber",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-26T13:48:32.314Z",
      amount = -29390.18,
      transactionProduct = "Tuna",
      merchantCountry = "Austria",
      merchantName = "Kemmer Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-26T20:57:30.086Z",
      amount = -20389.99,
      transactionProduct = "Salad",
      merchantCountry = "Sierra Leone",
      merchantName = "McGlynn, Cronin and Stoltenberg",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-26T21:13:59.700Z",
      amount = -9091.44,
      transactionProduct = "Chips",
      merchantCountry = "South Georgia and the South Sandwich Islands",
      merchantName = "Mraz and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-27T03:59:14.434Z",
      amount = -5989.22,
      transactionProduct = "Chair",
      merchantCountry = "Nepal",
      merchantName = "Hyatt and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-27T12:13:20.762Z",
      amount = -5409.68,
      transactionProduct = "Chips",
      merchantCountry = "Cayman Islands",
      merchantName = "Lebsack, Prohaska and King",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-27T13:29:38.289Z",
      amount = -7104.47,
      transactionProduct = "Fish",
      merchantCountry = "Estonia",
      merchantName = "Mohr LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-05-27T23:18:00.977Z",
      amount = -763.74,
      transactionProduct = "Tuna",
      merchantCountry = "Argentina",
      merchantName = "Emard, Haley and Treutel",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-05-28T00:57:18.734Z",
      amount = -11279.53,
      transactionProduct = "Pants",
      merchantCountry = "Peru",
      merchantName = "McGlynn LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-28T02:58:12.620Z",
      amount = -24049.14,
      transactionProduct = "Computer",
      merchantCountry = "Greenland",
      merchantName = "Moen and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-28T03:54:38.093Z",
      amount = -29800.33,
      transactionProduct = "Tuna",
      merchantCountry = "Slovenia",
      merchantName = "Howell Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-28T10:25:26.106Z",
      amount = -19310.72,
      transactionProduct = "Pizza",
      merchantCountry = "Cayman Islands",
      merchantName = "Bernhard, Dicki and Kutch",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-29T16:58:35.987Z",
      amount = -3581.79,
      transactionProduct = "Soap",
      merchantCountry = "Martinique",
      merchantName = "Ruecker - Bayer",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-29T17:33:43.254Z",
      amount = -869.58,
      transactionProduct = "Shoes",
      merchantCountry = "Madagascar",
      merchantName = "Watsica - Powlowski",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-05-30T10:00:48.540Z",
      amount = -7225.03,
      transactionProduct = "Hat",
      merchantCountry = "Estonia",
      merchantName = "Heathcote - Schimmel",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-31T02:59:48.301Z",
      amount = -1386.28,
      transactionProduct = "Bike",
      merchantCountry = "Hong Kong",
      merchantName = "Waelchi, Stiedemann and Kerluke",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-05-31T07:55:59.211Z",
      amount = -15233.09,
      transactionProduct = "Fish",
      merchantCountry = "Belize",
      merchantName = "Hoeger - Bauch",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-05-31T08:47:31.194Z",
      amount = -14963.32,
      transactionProduct = "Fish",
      merchantCountry = "Armenia",
      merchantName = "Will and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-05-31T10:36:34.373Z",
      amount = -7687.94,
      transactionProduct = "Shirt",
      merchantCountry = "Swaziland",
      merchantName = "Rosenbaum, Lakin and Cassin",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-01T05:03:08.151Z",
      amount = -28696.85,
      transactionProduct = "Salad",
      merchantCountry = "Samoa",
      merchantName = "Quitzon, Mills and Considine",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-02T00:49:54.184Z",
      amount = -23893.72,
      transactionProduct = "Shirt",
      merchantCountry = "China",
      merchantName = "Towne - Emard",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-02T10:53:36.856Z",
      amount = -24524.71,
      transactionProduct = "Chair",
      merchantCountry = "Ethiopia",
      merchantName = "Orn Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-02T15:46:11.873Z",
      amount = -22817.13,
      transactionProduct = "Salad",
      merchantCountry = "Venezuela",
      merchantName = "Farrell - Hilll",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-06-02T15:55:40.480Z",
      amount = -24802.63,
      transactionProduct = "Bike",
      merchantCountry = "Seychelles",
      merchantName = "Denesik and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-02T16:15:08.613Z",
      amount = -23280.1,
      transactionProduct = "Pizza",
      merchantCountry = "Zimbabwe",
      merchantName = "Rodriguez, Wilderman and Welch",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-02T17:42:37.051Z",
      amount = -25257.16,
      transactionProduct = "Towels",
      merchantCountry = "French Southern Territories",
      merchantName = "Doyle Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-03T06:55:34.195Z",
      amount = -8786.53,
      transactionProduct = "Salad",
      merchantCountry = "Saint Barthelemy",
      merchantName = "Klocko - Mohr",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-03T20:07:04.035Z",
      amount = -5859.85,
      transactionProduct = "Pizza",
      merchantCountry = "Svalbard & Jan Mayen Islands",
      merchantName = "Cummings - Anderson",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-05T02:36:53.494Z",
      amount = -8762.72,
      transactionProduct = "Table",
      merchantCountry = "Guinea-Bissau",
      merchantName = "Hauck Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-05T22:16:26.213Z",
      amount = -24926.52,
      transactionProduct = "Shoes",
      merchantCountry = "Bahamas",
      merchantName = "Zieme, Brown and Feil",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-06-05T23:46:33.067Z",
      amount = -27132.3,
      transactionProduct = "Cheese",
      merchantCountry = "Swaziland",
      merchantName = "Carroll - Kunde",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-06T08:23:14.182Z",
      amount = -10019.11,
      transactionProduct = "Soap",
      merchantCountry = "Estonia",
      merchantName = "Hudson LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-06T23:19:56.153Z",
      amount = -10418.36,
      transactionProduct = "Chicken",
      merchantCountry = "Montenegro",
      merchantName = "Stamm Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-06-07T04:49:16.952Z",
      amount = -2960.7,
      transactionProduct = "Car",
      merchantCountry = "Singapore",
      merchantName = "Stark - Hirthe",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-07T06:49:24.044Z",
      amount = -25266.35,
      transactionProduct = "Pants",
      merchantCountry = "Wallis and Futuna",
      merchantName = "Lynch, Ratke and Connelly",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-07T07:44:16.743Z",
      amount = -22138.01,
      transactionProduct = "Salad",
      merchantCountry = "Norway",
      merchantName = "Frami LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-07T09:46:44.335Z",
      amount = -3060.39,
      transactionProduct = "Salad",
      merchantCountry = "Iceland",
      merchantName = "Price Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-07T16:10:10.459Z",
      amount = -23264.03,
      transactionProduct = "Ball",
      merchantCountry = "Nigeria",
      merchantName = "Sipes Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-08T07:15:10.666Z",
      amount = -10904.92,
      transactionProduct = "Tuna",
      merchantCountry = "Algeria",
      merchantName = "Keeling - Von",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-08T20:47:31.830Z",
      amount = -28789.8,
      transactionProduct = "Salad",
      merchantCountry = "Philippines",
      merchantName = "Pouros, Borer and Moore",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-09T22:16:59.697Z",
      amount = -10758.19,
      transactionProduct = "Car",
      merchantCountry = "Ghana",
      merchantName = "Dietrich, Schiller and Ritchie",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-10T12:58:25.274Z",
      amount = -10168.19,
      transactionProduct = "Cheese",
      merchantCountry = "United Kingdom",
      merchantName = "Gutkowski Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-10T16:25:44.753Z",
      amount = -29404.49,
      transactionProduct = "Gloves",
      merchantCountry = "Pakistan",
      merchantName = "Stark, Johnson and Cronin",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-10T20:06:40.019Z",
      amount = -24946,
      transactionProduct = "Bacon",
      merchantCountry = "Sweden",
      merchantName = "Ledner, Haag and Kozey",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-10T23:09:46.085Z",
      amount = -1744.78,
      transactionProduct = "Keyboard",
      merchantCountry = "Cape Verde",
      merchantName = "Upton - Conroy",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-12T01:32:10.653Z",
      amount = -28840.91,
      transactionProduct = "Hat",
      merchantCountry = "India",
      merchantName = "Bernhard - Heaney",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-12T02:52:19.676Z",
      amount = -2097.06,
      transactionProduct = "Shirt",
      merchantCountry = "Liberia",
      merchantName = "Fadel, Mante and Blick",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-12T05:36:38.147Z",
      amount = -8247.22,
      transactionProduct = "Soap",
      merchantCountry = "Benin",
      merchantName = "Gorczany, D'Amore and Fritsch",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-12T10:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "SEK",
      time = "2022-06-13T19:32:30.691Z",
      amount = -24260.32,
      transactionProduct = "Pizza",
      merchantCountry = "Poland",
      merchantName = "Towne, Stark and Zieme",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-13T20:05:31.740Z",
      amount = -9797.23,
      transactionProduct = "Chicken",
      merchantCountry = "Zambia",
      merchantName = "Crist - Mosciski",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-13T22:38:12.096Z",
      amount = -5206.06,
      transactionProduct = "Ball",
      merchantCountry = "France",
      merchantName = "Goldner - Dibbert",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-15T00:41:52.770Z",
      amount = -13747.69,
      transactionProduct = "Table",
      merchantCountry = "Swaziland",
      merchantName = "Muller LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-15T04:17:50.927Z",
      amount = -8598.21,
      transactionProduct = "Sausages",
      merchantCountry = "Uruguay",
      merchantName = "Champlin and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-15T11:40:02.098Z",
      amount = -11857.92,
      transactionProduct = "Hat",
      merchantCountry = "Gabon",
      merchantName = "Schamberger and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-15T12:25:42.234Z",
      amount = -22929.97,
      transactionProduct = "Keyboard",
      merchantCountry = "Romania",
      merchantName = "Cronin, Stroman and Larson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-16T00:04:15.997Z",
      amount = -9528.79,
      transactionProduct = "Car",
      merchantCountry = "Morocco",
      merchantName = "Schamberger - Orn",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-16T17:24:46.195Z",
      amount = -29174.74,
      transactionProduct = "Hat",
      merchantCountry = "United Kingdom",
      merchantName = "Schmitt - Kuhlman",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-17T11:09:02.947Z",
      amount = -14957.9,
      transactionProduct = "Pants",
      merchantCountry = "Syrian Arab Republic",
      merchantName = "Huel - Waelchi",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-18T01:54:13.419Z",
      amount = -2849.19,
      transactionProduct = "Gloves",
      merchantCountry = "Bangladesh",
      merchantName = "Schaden LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-06-18T15:09:29.741Z",
      amount = -6019.06,
      transactionProduct = "Fish",
      merchantCountry = "Japan",
      merchantName = "Leuschke - Price",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-18T18:49:32.507Z",
      amount = -22647.28,
      transactionProduct = "Bacon",
      merchantCountry = "Puerto Rico",
      merchantName = "Walker, Adams and Koelpin",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-18T23:49:38.562Z",
      amount = -9153.45,
      transactionProduct = "Sausages",
      merchantCountry = "Egypt",
      merchantName = "Carroll Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-20T10:38:26.708Z",
      amount = -29742.58,
      transactionProduct = "Chair",
      merchantCountry = "United Kingdom",
      merchantName = "Boehm, Will and Ward",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-20T15:17:13.655Z",
      amount = -25506.48,
      transactionProduct = "Fish",
      merchantCountry = "United Kingdom",
      merchantName = "Feil, Wisozk and Dare",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-20T19:10:08.901Z",
      amount = -544.83,
      transactionProduct = "Cheese",
      merchantCountry = "Anguilla",
      merchantName = "Nolan LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-22T04:30:40.317Z",
      amount = -16734.29,
      transactionProduct = "Fish",
      merchantCountry = "Bhutan",
      merchantName = "Pouros Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-06-22T18:18:48.413Z",
      amount = -1767.64,
      transactionProduct = "Gloves",
      merchantCountry = "Japan",
      merchantName = "Kulas - Crona",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-22T23:14:26.796Z",
      amount = -5346.06,
      transactionProduct = "Shirt",
      merchantCountry = "Panama",
      merchantName = "Baumbach, Cole and Huels",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-22T23:26:23.935Z",
      amount = -27691.39,
      transactionProduct = "Sausages",
      merchantCountry = "Spain",
      merchantName = "Connelly LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-23T11:26:04.794Z",
      amount = -14327.45,
      transactionProduct = "Sausages",
      merchantCountry = "Armenia",
      merchantName = "Barton and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-25T06:18:35.371Z",
      amount = -15281.11,
      transactionProduct = "Fish",
      merchantCountry = "United Arab Emirates",
      merchantName = "Stamm - Pfeffer",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-06-27T11:45:57.703Z",
      amount = -1234.65,
      transactionProduct = "Gloves",
      merchantCountry = "Tokelau",
      merchantName = "Wolf - Kreiger",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-27T13:38:36.327Z",
      amount = -18380.1,
      transactionProduct = "Pants",
      merchantCountry = "Ethiopia",
      merchantName = "Ledner, Mayert and Koch",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-06-27T19:24:15.344Z",
      amount = -20182.97,
      transactionProduct = "Car",
      merchantCountry = "El Salvador",
      merchantName = "Hettinger Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-06-28T14:26:07.095Z",
      amount = -20313.95,
      transactionProduct = "Pants",
      merchantCountry = "Tokelau",
      merchantName = "Strosin - Pollich",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-06-29T09:13:22.498Z",
      amount = -13621.69,
      transactionProduct = "Shoes",
      merchantCountry = "Kuwait",
      merchantName = "Watsica, Walker and Kuvalis",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-06-30T02:50:21.371Z",
      amount = -15117.13,
      transactionProduct = "Shoes",
      merchantCountry = "Kuwait",
      merchantName = "Hackett, Sawayn and Krajcik",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-06-30T11:53:54.344Z",
      amount = -12727.09,
      transactionProduct = "Sausages",
      merchantCountry = "Saint Pierre and Miquelon",
      merchantName = "Wolff, Koss and Stiedemann",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-01T12:17:13.469Z",
      amount = -3932,
      transactionProduct = "Computer",
      merchantCountry = "Cuba",
      merchantName = "Kuhic - Swift",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-02T04:36:45.837Z",
      amount = -9902.35,
      transactionProduct = "Bacon",
      merchantCountry = "British Indian Ocean Territory (Chagos Archipelago)",
      merchantName = "MacGyver - Orn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-02T16:19:03.423Z",
      amount = -17759.61,
      transactionProduct = "Pizza",
      merchantCountry = "Liberia",
      merchantName = "O'Hara - Hane",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-03T00:41:21.151Z",
      amount = -15053.6,
      transactionProduct = "Hat",
      merchantCountry = "Gambia",
      merchantName = "Thiel - Jast",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-03T07:09:33.267Z",
      amount = -23644.04,
      transactionProduct = "Shoes",
      merchantCountry = "Guyana",
      merchantName = "Jacobson - Morissette",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-03T08:46:07.264Z",
      amount = -27758.84,
      transactionProduct = "Cheese",
      merchantCountry = "Andorra",
      merchantName = "Ritchie Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-03T12:39:18.884Z",
      amount = -5268.35,
      transactionProduct = "Bike",
      merchantCountry = "Ireland",
      merchantName = "Bernhard, Heaney and Emard",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-04T04:10:13.376Z",
      amount = -9509.72,
      transactionProduct = "Cheese",
      merchantCountry = "Macedonia",
      merchantName = "Huels Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-04T14:32:35.045Z",
      amount = -13586.76,
      transactionProduct = "Computer",
      merchantCountry = "Albania",
      merchantName = "Lang LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-04T20:49:33.152Z",
      amount = -1147.27,
      transactionProduct = "Fish",
      merchantCountry = "Colombia",
      merchantName = "Christiansen, Herman and Sauer",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-05T00:54:55.693Z",
      amount = -28859.79,
      transactionProduct = "Soap",
      merchantCountry = "Northern Mariana Islands",
      merchantName = "Graham, Rippin and Lubowitz",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-05T03:56:48.018Z",
      amount = -21208.56,
      transactionProduct = "Fish",
      merchantCountry = "Guadeloupe",
      merchantName = "Conn, Lesch and Howell",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-05T22:48:23.392Z",
      amount = -10785.3,
      transactionProduct = "Hat",
      merchantCountry = "Haiti",
      merchantName = "Bashirian, Bednar and Hahn",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-06T00:39:13.126Z",
      amount = -26434.76,
      transactionProduct = "Tuna",
      merchantCountry = "Eritrea",
      merchantName = "Roob - Walsh",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-06T04:03:04.693Z",
      amount = -18638.91,
      transactionProduct = "Cheese",
      merchantCountry = "Niue",
      merchantName = "Grimes, Nader and Fritsch",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-06T08:37:27.110Z",
      amount = -5813.76,
      transactionProduct = "Chair",
      merchantCountry = "Macedonia",
      merchantName = "Vandervort and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-06T20:23:49.371Z",
      amount = -7255.68,
      transactionProduct = "Soap",
      merchantCountry = "Bermuda",
      merchantName = "Jacobson Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-06T21:39:29.327Z",
      amount = -21507.93,
      transactionProduct = "Shoes",
      merchantCountry = "Mauritania",
      merchantName = "Stamm - Swift",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-07T01:12:11.151Z",
      amount = -29171.93,
      transactionProduct = "Tuna",
      merchantCountry = "Isle of Man",
      merchantName = "Mraz - Donnelly",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-07T08:49:10.829Z",
      amount = -3968.69,
      transactionProduct = "Computer",
      merchantCountry = "Suriname",
      merchantName = "Bogisich Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-07T09:50:54.226Z",
      amount = -9064.86,
      transactionProduct = "Car",
      merchantCountry = "Vietnam",
      merchantName = "Reinger Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-07T12:37:59.762Z",
      amount = -29729.86,
      transactionProduct = "Salad",
      merchantCountry = "French Guiana",
      merchantName = "Grant, Strosin and Harris",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-07T21:50:25.327Z",
      amount = -7683.9,
      transactionProduct = "Tuna",
      merchantCountry = "Comoros",
      merchantName = "Davis - Altenwerth",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-08T00:21:37.015Z",
      amount = -24165.18,
      transactionProduct = "Table",
      merchantCountry = "Serbia",
      merchantName = "Schumm Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-08T10:24:27.386Z",
      amount = -5454.43,
      transactionProduct = "Fish",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "Rowe LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-08T20:10:22.606Z",
      amount = -254.52,
      transactionProduct = "Shirt",
      merchantCountry = "Equatorial Guinea",
      merchantName = "Huels, Ullrich and Rau",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-09T02:51:05.748Z",
      amount = -29371.68,
      transactionProduct = "Hat",
      merchantCountry = "Israel",
      merchantName = "Goyette, Simonis and Armstrong",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-09T14:23:42.465Z",
      amount = -29957.61,
      transactionProduct = "Chips",
      merchantCountry = "Democratic People's Republic of Korea",
      merchantName = "Abshire - Langworth",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-10T01:10:21.703Z",
      amount = -510.72,
      transactionProduct = "Soap",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Waters, O'Hara and Boyer",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-10T01:36:00.642Z",
      amount = -7968.02,
      transactionProduct = "Table",
      merchantCountry = "Eritrea",
      merchantName = "Dibbert, Welch and Funk",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-10T03:16:55.908Z",
      amount = -11204.44,
      transactionProduct = "Car",
      merchantCountry = "Central African Republic",
      merchantName = "O'Hara LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-10T11:58:22.025Z",
      amount = -11317.48,
      transactionProduct = "Shirt",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Lueilwitz Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-10T14:03:19.397Z",
      amount = -21588.62,
      transactionProduct = "Hat",
      merchantCountry = "Afghanistan",
      merchantName = "Adams and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-10T17:06:13.942Z",
      amount = -19402.13,
      transactionProduct = "Pizza",
      merchantCountry = "Spain",
      merchantName = "Schinner, Boyle and Romaguera",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-11T02:22:58.596Z",
      amount = -13376.39,
      transactionProduct = "Towels",
      merchantCountry = "Suriname",
      merchantName = "Renner Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-11T10:40:04.412Z",
      amount = -29793.37,
      transactionProduct = "Fish",
      merchantCountry = "Ethiopia",
      merchantName = "Cremin Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-11T15:24:48.008Z",
      amount = -2118.21,
      transactionProduct = "Sausages",
      merchantCountry = "Benin",
      merchantName = "Glover - Osinski",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-11T17:28:30.413Z",
      amount = -26436.77,
      transactionProduct = "Sausages",
      merchantCountry = "Taiwan",
      merchantName = "Stoltenberg - Bode",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-12T10:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-12T15:24:21.790Z",
      amount = -5328.49,
      transactionProduct = "Shirt",
      merchantCountry = "Western Sahara",
      merchantName = "Metz Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-13T01:10:17.260Z",
      amount = -21201.23,
      transactionProduct = "Shirt",
      merchantCountry = "Bahrain",
      merchantName = "Murphy Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-13T02:10:58.172Z",
      amount = -6249.28,
      transactionProduct = "Mouse",
      merchantCountry = "China",
      merchantName = "Wolff - Goodwin",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-13T07:53:14.528Z",
      amount = -12947.76,
      transactionProduct = "Keyboard",
      merchantCountry = "Peru",
      merchantName = "Kemmer - Koss",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-13T10:55:51.980Z",
      amount = -8882.95,
      transactionProduct = "Pants",
      merchantCountry = "Mozambique",
      merchantName = "Hessel, White and DuBuque",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-14T06:59:36.571Z",
      amount = -20493.88,
      transactionProduct = "Sausages",
      merchantCountry = "Ukraine",
      merchantName = "Baumbach - Goyette",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-14T13:49:33.964Z",
      amount = -1393.66,
      transactionProduct = "Chicken",
      merchantCountry = "Turkmenistan",
      merchantName = "Schaden - Pouros",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-14T17:40:22.845Z",
      amount = -25280.72,
      transactionProduct = "Car",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Keebler and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-15T10:13:54.688Z",
      amount = -17744.95,
      transactionProduct = "Keyboard",
      merchantCountry = "Panama",
      merchantName = "Hansen LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-15T15:19:09.959Z",
      amount = -5489.27,
      transactionProduct = "Pants",
      merchantCountry = "Malaysia",
      merchantName = "Wiza - Ritchie",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-15T20:25:36.329Z",
      amount = -27482.55,
      transactionProduct = "Bike",
      merchantCountry = "French Guiana",
      merchantName = "Grimes - Rohan",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-16T16:42:48.857Z",
      amount = -1925.46,
      transactionProduct = "Bike",
      merchantCountry = "Norway",
      merchantName = "Miller Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-17T02:44:24.276Z",
      amount = -23584.96,
      transactionProduct = "Fish",
      merchantCountry = "Zambia",
      merchantName = "Pacocha Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-17T03:58:10.392Z",
      amount = -21121.47,
      transactionProduct = "Hat",
      merchantCountry = "Tanzania",
      merchantName = "Hahn, Hartmann and Mills",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-17T12:29:14.213Z",
      amount = -19242.54,
      transactionProduct = "Towels",
      merchantCountry = "Malta",
      merchantName = "Orn Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-17T20:27:36.296Z",
      amount = -17477.9,
      transactionProduct = "Keyboard",
      merchantCountry = "Latvia",
      merchantName = "Ledner, Schowalter and Hickle",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-17T22:12:08.212Z",
      amount = -18860.18,
      transactionProduct = "Shoes",
      merchantCountry = "Cyprus",
      merchantName = "Mayer - Tremblay",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-18T07:17:15.698Z",
      amount = -10645.96,
      transactionProduct = "Pizza",
      merchantCountry = "Cayman Islands",
      merchantName = "Swift, Spinka and Grady",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-18T08:27:56.474Z",
      amount = -23685.25,
      transactionProduct = "Tuna",
      merchantCountry = "Czech Republic",
      merchantName = "Tillman - Ortiz",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-18T09:31:33.329Z",
      amount = -25584.08,
      transactionProduct = "Cheese",
      merchantCountry = "Vietnam",
      merchantName = "Bogan and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-18T16:39:19.254Z",
      amount = -27149.26,
      transactionProduct = "Computer",
      merchantCountry = "Niger",
      merchantName = "VonRueden - Schinner",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-18T23:19:05.667Z",
      amount = -17049.76,
      transactionProduct = "Bike",
      merchantCountry = "Bahrain",
      merchantName = "Davis - Hermann",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-19T04:53:06.290Z",
      amount = -26089.16,
      transactionProduct = "Hat",
      merchantCountry = "Kazakhstan",
      merchantName = "Satterfield, Langworth and Predovic",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-19T11:48:28.312Z",
      amount = -25815.4,
      transactionProduct = "Towels",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "West, Franey and Gorczany",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-19T13:51:31.926Z",
      amount = -25308.28,
      transactionProduct = "Bike",
      merchantCountry = "Cyprus",
      merchantName = "Beer and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-20T04:25:14.064Z",
      amount = -22011.5,
      transactionProduct = "Pizza",
      merchantCountry = "United States of America",
      merchantName = "Bailey - Leuschke",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-20T08:16:51.523Z",
      amount = -21354.71,
      transactionProduct = "Cheese",
      merchantCountry = "Antarctica (the territory South of 60 deg S)",
      merchantName = "Orn, Farrell and Prohaska",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-20T10:09:12.231Z",
      amount = -28770.22,
      transactionProduct = "Bacon",
      merchantCountry = "Guatemala",
      merchantName = "Cummings, Koelpin and Purdy",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-20T11:34:28.981Z",
      amount = -9403.32,
      transactionProduct = "Chair",
      merchantCountry = "New Zealand",
      merchantName = "Bogisich - Rolfson",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-20T14:21:07.606Z",
      amount = -24002.03,
      transactionProduct = "Fish",
      merchantCountry = "Portugal",
      merchantName = "Lebsack, Langworth and Kertzmann",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-20T23:18:43.732Z",
      amount = -18195.15,
      transactionProduct = "Fish",
      merchantCountry = "Kiribati",
      merchantName = "Wiegand Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-21T04:28:06.220Z",
      amount = -731.37,
      transactionProduct = "Sausages",
      merchantCountry = "Fiji",
      merchantName = "Lindgren - Lakin",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-21T05:42:13.006Z",
      amount = -2267.87,
      transactionProduct = "Car",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Williamson LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-21T10:25:56.444Z",
      amount = -26908.69,
      transactionProduct = "Keyboard",
      merchantCountry = "Malta",
      merchantName = "Thompson, Wilkinson and Keebler",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-22T07:01:34.312Z",
      amount = -716.97,
      transactionProduct = "Cheese",
      merchantCountry = "Palau",
      merchantName = "Roberts - Pacocha",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-22T15:33:17.863Z",
      amount = -7026.26,
      transactionProduct = "Gloves",
      merchantCountry = "Cook Islands",
      merchantName = "Bartell, Koch and Feest",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-23T02:31:33.579Z",
      amount = -23092.59,
      transactionProduct = "Towels",
      merchantCountry = "Niger",
      merchantName = "Romaguera Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-23T07:48:15.056Z",
      amount = -10104.12,
      transactionProduct = "Ball",
      merchantCountry = "Guatemala",
      merchantName = "Simonis - Runolfsdottir",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-24T01:18:45.485Z",
      amount = -27520.16,
      transactionProduct = "Hat",
      merchantCountry = "San Marino",
      merchantName = "Kihn - Wisozk",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-24T09:20:15.383Z",
      amount = -17218.35,
      transactionProduct = "Chips",
      merchantCountry = "Saint Pierre and Miquelon",
      merchantName = "McGlynn, Murazik and Wisozk",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-24T12:46:07.640Z",
      amount = -16524.87,
      transactionProduct = "Car",
      merchantCountry = "El Salvador",
      merchantName = "Skiles and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-24T14:08:28.022Z",
      amount = -16192.17,
      transactionProduct = "Chicken",
      merchantCountry = "Falkland Islands (Malvinas)",
      merchantName = "Mraz, Kutch and Breitenberg",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-24T18:49:56.996Z",
      amount = -8535.64,
      transactionProduct = "Keyboard",
      merchantCountry = "Bolivia",
      merchantName = "Hagenes - Pacocha",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-24T22:58:40.319Z",
      amount = -16473.73,
      transactionProduct = "Shoes",
      merchantCountry = "Central African Republic",
      merchantName = "Stanton Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-25T01:38:52.367Z",
      amount = -11719.53,
      transactionProduct = "Shirt",
      merchantCountry = "Angola",
      merchantName = "Hilpert Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-25T14:09:50.473Z",
      amount = -27813.55,
      transactionProduct = "Pizza",
      merchantCountry = "Palau",
      merchantName = "Mraz and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-25T14:52:17.992Z",
      amount = -20541.41,
      transactionProduct = "Pants",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "Murazik, Keebler and McCullough",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-25T17:58:07.019Z",
      amount = -21249.68,
      transactionProduct = "Chips",
      merchantCountry = "Paraguay",
      merchantName = "Rempel, Veum and Bauch",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-25T23:52:17.180Z",
      amount = -10326.01,
      transactionProduct = "Pizza",
      merchantCountry = "Saint Martin",
      merchantName = "Goldner LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-26T02:08:47.622Z",
      amount = -16500.9,
      transactionProduct = "Towels",
      merchantCountry = "Madagascar",
      merchantName = "Stoltenberg - Thompson",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-26T08:23:53.697Z",
      amount = -9166.61,
      transactionProduct = "Bacon",
      merchantCountry = "Montserrat",
      merchantName = "Osinski - Gislason",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-26T09:58:44.332Z",
      amount = -15300.28,
      transactionProduct = "Chicken",
      merchantCountry = "Monaco",
      merchantName = "Schmitt, Stamm and Satterfield",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-26T12:54:36.072Z",
      amount = -23504.68,
      transactionProduct = "Computer",
      merchantCountry = "Romania",
      merchantName = "Franecki, Schaefer and Pfannerstill",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-26T20:10:09.005Z",
      amount = -16124.45,
      transactionProduct = "Chicken",
      merchantCountry = "Madagascar",
      merchantName = "Cormier, Braun and Metz",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-26T23:31:41.622Z",
      amount = -25001.91,
      transactionProduct = "Salad",
      merchantCountry = "Anguilla",
      merchantName = "Schumm LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-27T03:02:15.282Z",
      amount = -11182.63,
      transactionProduct = "Salad",
      merchantCountry = "Guinea-Bissau",
      merchantName = "Little - Tremblay",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-27T08:10:52.004Z",
      amount = -23066.5,
      transactionProduct = "Shirt",
      merchantCountry = "El Salvador",
      merchantName = "Klein, Kuhic and Medhurst",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-28T02:34:58.778Z",
      amount = -21195.01,
      transactionProduct = "Towels",
      merchantCountry = "Saint Helena",
      merchantName = "Runte Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-07-28T11:58:20.355Z",
      amount = -20420.25,
      transactionProduct = "Pizza",
      merchantCountry = "Nepal",
      merchantName = "Pollich - O'Reilly",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-28T15:16:40.833Z",
      amount = -17582.98,
      transactionProduct = "Soap",
      merchantCountry = "Gambia",
      merchantName = "Beatty and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-07-28T16:34:07.718Z",
      amount = -4690.27,
      transactionProduct = "Computer",
      merchantCountry = "Niue",
      merchantName = "Heathcote - Swift",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-28T17:55:09.571Z",
      amount = -24819.69,
      transactionProduct = "Chicken",
      merchantCountry = "Aruba",
      merchantName = "Howe Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-28T21:02:02.257Z",
      amount = -5365.79,
      transactionProduct = "Bike",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Lowe Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-30T17:01:36.851Z",
      amount = -8474.22,
      transactionProduct = "Sausages",
      merchantCountry = "Palau",
      merchantName = "Hackett, Kilback and Romaguera",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-30T20:29:24.709Z",
      amount = -18391.05,
      transactionProduct = "Table",
      merchantCountry = "Saint Martin",
      merchantName = "Adams - Becker",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-30T22:16:52.104Z",
      amount = -13665,
      transactionProduct = "Car",
      merchantCountry = "Lao People's Democratic Republic",
      merchantName = "Jacobi, Larkin and Raynor",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-07-31T05:40:54.287Z",
      amount = -16916.98,
      transactionProduct = "Computer",
      merchantCountry = "Samoa",
      merchantName = "Muller - Ryan",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-07-31T09:06:13.936Z",
      amount = -15701.72,
      transactionProduct = "Bacon",
      merchantCountry = "Djibouti",
      merchantName = "Vandervort, Brakus and Swaniawski",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-07-31T09:35:14.391Z",
      amount = -7254.31,
      transactionProduct = "Towels",
      merchantCountry = "Monaco",
      merchantName = "McClure - Wisozk",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-07-31T18:32:14.333Z",
      amount = -24992.88,
      transactionProduct = "Sausages",
      merchantCountry = "Western Sahara",
      merchantName = "Schaden and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-01T17:17:39.390Z",
      amount = -10057.48,
      transactionProduct = "Computer",
      merchantCountry = "Guadeloupe",
      merchantName = "Cole LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-02T03:30:12.760Z",
      amount = -6871.84,
      transactionProduct = "Car",
      merchantCountry = "United Kingdom",
      merchantName = "Schmidt - Dach",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-02T04:46:45.597Z",
      amount = -22046.76,
      transactionProduct = "Soap",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "Stroman, Fay and Schmitt",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-02T13:03:02.026Z",
      amount = -17592.75,
      transactionProduct = "Tuna",
      merchantCountry = "Ecuador",
      merchantName = "Hessel - O'Hara",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-03T01:46:18.800Z",
      amount = -24653.89,
      transactionProduct = "Chips",
      merchantCountry = "Saudi Arabia",
      merchantName = "Hayes - Kreiger",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-03T05:32:49.767Z",
      amount = -13608.41,
      transactionProduct = "Pizza",
      merchantCountry = "Montserrat",
      merchantName = "McClure - Koch",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-03T05:50:27.475Z",
      amount = -27825.27,
      transactionProduct = "Tuna",
      merchantCountry = "Macao",
      merchantName = "Turner Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-03T06:24:38.109Z",
      amount = -20102.09,
      transactionProduct = "Pizza",
      merchantCountry = "Zimbabwe",
      merchantName = "Huel, Cruickshank and Mosciski",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-03T13:36:33.519Z",
      amount = -27449.47,
      transactionProduct = "Mouse",
      merchantCountry = "French Southern Territories",
      merchantName = "Ullrich - Krajcik",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-03T14:22:34.112Z",
      amount = -12715.26,
      transactionProduct = "Towels",
      merchantCountry = "Ethiopia",
      merchantName = "Weissnat Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-03T20:15:27.037Z",
      amount = -20321.15,
      transactionProduct = "Chair",
      merchantCountry = "Colombia",
      merchantName = "Heller LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-03T23:49:34.725Z",
      amount = -3880.81,
      transactionProduct = "Mouse",
      merchantCountry = "Finland",
      merchantName = "Hyatt, Schuppe and Jacobi",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-04T09:20:44.646Z",
      amount = -28108.63,
      transactionProduct = "Towels",
      merchantCountry = "Belgium",
      merchantName = "Jones Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-04T21:49:29.779Z",
      amount = -9605.55,
      transactionProduct = "Table",
      merchantCountry = "American Samoa",
      merchantName = "Jaskolski - Rosenbaum",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-05T11:46:06.097Z",
      amount = -16867.4,
      transactionProduct = "Fish",
      merchantCountry = "Switzerland",
      merchantName = "Lang, Swift and Stehr",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-05T16:40:24.703Z",
      amount = -14203.88,
      transactionProduct = "Salad",
      merchantCountry = "China",
      merchantName = "Wisozk Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-05T19:24:47.601Z",
      amount = -16512.24,
      transactionProduct = "Towels",
      merchantCountry = "Bhutan",
      merchantName = "Upton - Bruen",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-06T02:01:52.691Z",
      amount = -11569.18,
      transactionProduct = "Keyboard",
      merchantCountry = "Heard Island and McDonald Islands",
      merchantName = "Ortiz, Macejkovic and Kuvalis",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-06T13:56:17.989Z",
      amount = -28785.37,
      transactionProduct = "Car",
      merchantCountry = "Rwanda",
      merchantName = "Langosh, Boyle and Kuphal",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-06T16:47:24.471Z",
      amount = -12760.94,
      transactionProduct = "Sausages",
      merchantCountry = "Nauru",
      merchantName = "Zboncak, Turner and White",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-07T01:32:44.066Z",
      amount = -22545.14,
      transactionProduct = "Gloves",
      merchantCountry = "Tokelau",
      merchantName = "Ryan - Wyman",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-07T06:36:31.895Z",
      amount = -3821.94,
      transactionProduct = "Bike",
      merchantCountry = "Cambodia",
      merchantName = "Zulauf - Lueilwitz",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-07T18:30:38.631Z",
      amount = -15950.55,
      transactionProduct = "Hat",
      merchantCountry = "Chad",
      merchantName = "Hahn - Hand",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-08T04:48:45.125Z",
      amount = -23241.23,
      transactionProduct = "Keyboard",
      merchantCountry = "Kenya",
      merchantName = "Abbott Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-08T05:09:20.743Z",
      amount = -15297.58,
      transactionProduct = "Car",
      merchantCountry = "Dominican Republic",
      merchantName = "Goodwin - Breitenberg",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-09T18:20:49.110Z",
      amount = -15587.96,
      transactionProduct = "Tuna",
      merchantCountry = "Hungary",
      merchantName = "Johnson - Turner",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-10T21:49:25.791Z",
      amount = -18966.47,
      transactionProduct = "Sausages",
      merchantCountry = "South Africa",
      merchantName = "Bayer - Larkin",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-11T00:59:33.231Z",
      amount = -23816.01,
      transactionProduct = "Fish",
      merchantCountry = "Iraq",
      merchantName = "Becker - Leuschke",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-11T01:59:42.915Z",
      amount = -9691.22,
      transactionProduct = "Pants",
      merchantCountry = "Guyana",
      merchantName = "Emard Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-11T04:56:01.382Z",
      amount = -21869.66,
      transactionProduct = "Chips",
      merchantCountry = "Morocco",
      merchantName = "Zulauf, Nicolas and Labadie",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-11T06:18:54.372Z",
      amount = -26578.29,
      transactionProduct = "Ball",
      merchantCountry = "Egypt",
      merchantName = "Swaniawski - Sipes",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-11T20:16:57.772Z",
      amount = -14671.51,
      transactionProduct = "Mouse",
      merchantCountry = "Kuwait",
      merchantName = "Raynor, Trantow and Block",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-12T02:13:14.607Z",
      amount = -416.34,
      transactionProduct = "Chair",
      merchantCountry = "Tonga",
      merchantName = "Rogahn, Beatty and Hirthe",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-12T02:14:33.576Z",
      amount = -26910.59,
      transactionProduct = "Ball",
      merchantCountry = "Sri Lanka",
      merchantName = "Hilpert Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-12T05:21:21.725Z",
      amount = -19190.45,
      transactionProduct = "Fish",
      merchantCountry = "Sri Lanka",
      merchantName = "Greenholt - Fay",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-12T10:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-12T12:00:25.426Z",
      amount = -16674.49,
      transactionProduct = "Shoes",
      merchantCountry = "Northern Mariana Islands",
      merchantName = "Ortiz and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-12T14:14:11.483Z",
      amount = -1818.68,
      transactionProduct = "Soap",
      merchantCountry = "Saint Martin",
      merchantName = "Bahringer, Kovacek and Hoppe",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-12T16:06:57.780Z",
      amount = -15908.2,
      transactionProduct = "Bike",
      merchantCountry = "Sudan",
      merchantName = "Hand - Durgan",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-12T20:34:37.957Z",
      amount = -12535.04,
      transactionProduct = "Salad",
      merchantCountry = "Nauru",
      merchantName = "Harris - Windler",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-12T21:15:58.674Z",
      amount = -16092.64,
      transactionProduct = "Mouse",
      merchantCountry = "Netherlands",
      merchantName = "Morar Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-13T02:07:00.396Z",
      amount = -21873.23,
      transactionProduct = "Chips",
      merchantCountry = "Japan",
      merchantName = "Marks - Glover",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-13T06:26:28.182Z",
      amount = -756.34,
      transactionProduct = "Ball",
      merchantCountry = "Kenya",
      merchantName = "Gislason, Donnelly and Boyer",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-14T01:18:44.454Z",
      amount = -17873.5,
      transactionProduct = "Chips",
      merchantCountry = "Ireland",
      merchantName = "Hickle - Feest",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-14T05:12:22.588Z",
      amount = -11996.32,
      transactionProduct = "Mouse",
      merchantCountry = "Venezuela",
      merchantName = "Tremblay Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-14T16:25:30.922Z",
      amount = -15991.69,
      transactionProduct = "Ball",
      merchantCountry = "Cape Verde",
      merchantName = "Ryan - Cormier",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-15T02:02:57.245Z",
      amount = -1470.95,
      transactionProduct = "Gloves",
      merchantCountry = "Cambodia",
      merchantName = "Spinka - Schroeder",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-15T03:34:22.921Z",
      amount = -9383.06,
      transactionProduct = "Fish",
      merchantCountry = "Tokelau",
      merchantName = "Trantow - Volkman",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-15T08:11:47.088Z",
      amount = -27916.76,
      transactionProduct = "Pizza",
      merchantCountry = "Algeria",
      merchantName = "Lockman Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-15T15:22:30.284Z",
      amount = -21604.03,
      transactionProduct = "Table",
      merchantCountry = "Jersey",
      merchantName = "Abernathy - Treutel",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-16T02:22:47.357Z",
      amount = -6332.98,
      transactionProduct = "Fish",
      merchantCountry = "Saint Martin",
      merchantName = "Ortiz - Sauer",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-16T11:41:09.292Z",
      amount = -4269.86,
      transactionProduct = "Bacon",
      merchantCountry = "Saudi Arabia",
      merchantName = "Rosenbaum - Wilkinson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-16T19:58:10.490Z",
      amount = -7708.34,
      transactionProduct = "Chips",
      merchantCountry = "Slovenia",
      merchantName = "Nader - Bahringer",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-17T04:06:32.797Z",
      amount = -3084.15,
      transactionProduct = "Pizza",
      merchantCountry = "Nauru",
      merchantName = "Jacobson, Anderson and Kshlerin",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-17T12:24:18.570Z",
      amount = -16691.59,
      transactionProduct = "Keyboard",
      merchantCountry = "South Georgia and the South Sandwich Islands",
      merchantName = "Bergnaum Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-18T03:07:26.848Z",
      amount = -5470.96,
      transactionProduct = "Table",
      merchantCountry = "Brazil",
      merchantName = "Wunsch LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-18T15:30:36.639Z",
      amount = -4490.84,
      transactionProduct = "Keyboard",
      merchantCountry = "Tokelau",
      merchantName = "Prohaska - Borer",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-20T11:51:05.171Z",
      amount = -27724.41,
      transactionProduct = "Chicken",
      merchantCountry = "Norfolk Island",
      merchantName = "Balistreri - Ferry",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-20T19:13:23.244Z",
      amount = -10654.34,
      transactionProduct = "Fish",
      merchantCountry = "Cameroon",
      merchantName = "Hamill and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-21T10:40:49.105Z",
      amount = -27983.8,
      transactionProduct = "Cheese",
      merchantCountry = "Solomon Islands",
      merchantName = "Rippin, Shields and Sauer",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-21T11:02:13.184Z",
      amount = -3206.62,
      transactionProduct = "Car",
      merchantCountry = "Monaco",
      merchantName = "Wisozk - Rodriguez",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-21T14:51:59.801Z",
      amount = -20017.46,
      transactionProduct = "Chair",
      merchantCountry = "Barbados",
      merchantName = "Tremblay, Vandervort and Brown",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-21T19:01:47.033Z",
      amount = -15229.29,
      transactionProduct = "Salad",
      merchantCountry = "Guadeloupe",
      merchantName = "Bruen Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-22T04:38:34.602Z",
      amount = -10074.77,
      transactionProduct = "Cheese",
      merchantCountry = "Cyprus",
      merchantName = "Langosh, White and Tromp",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-22T05:29:16.781Z",
      amount = -29984.77,
      transactionProduct = "Table",
      merchantCountry = "Bulgaria",
      merchantName = "Simonis, Fritsch and Durgan",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-22T11:35:20.124Z",
      amount = -7969.8,
      transactionProduct = "Shoes",
      merchantCountry = "Palestinian Territory",
      merchantName = "Terry, Kassulke and Harris",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-22T14:30:03.548Z",
      amount = -15530.6,
      transactionProduct = "Chips",
      merchantCountry = "Moldova",
      merchantName = "Leannon - Reilly",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-24T22:11:15.300Z",
      amount = -6007.01,
      transactionProduct = "Salad",
      merchantCountry = "Germany",
      merchantName = "Mertz, Lynch and Kovacek",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-25T00:37:02.315Z",
      amount = -21281.6,
      transactionProduct = "Towels",
      merchantCountry = "Anguilla",
      merchantName = "Cartwright - Hahn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-25T03:49:29.954Z",
      amount = -22750.84,
      transactionProduct = "Hat",
      merchantCountry = "Lesotho",
      merchantName = "Rempel LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-08-25T12:19:28.242Z",
      amount = -28115.58,
      transactionProduct = "Tuna",
      merchantCountry = "Hong Kong",
      merchantName = "Rowe LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-08-25T13:08:17.001Z",
      amount = -8173.05,
      transactionProduct = "Towels",
      merchantCountry = "Greenland",
      merchantName = "Rogahn - Hermiston",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-08-25T15:31:47.430Z",
      amount = -6889.58,
      transactionProduct = "Mouse",
      merchantCountry = "Morocco",
      merchantName = "Herzog - McClure",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-27T21:55:39.632Z",
      amount = -26281.7,
      transactionProduct = "Table",
      merchantCountry = "Colombia",
      merchantName = "Grimes - Schmidt",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-29T22:18:03.653Z",
      amount = -27423.78,
      transactionProduct = "Shirt",
      merchantCountry = "Niger",
      merchantName = "Bruen and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-30T12:14:33.025Z",
      amount = -10796.56,
      transactionProduct = "Chair",
      merchantCountry = "Republic of Korea",
      merchantName = "Mante, Leuschke and Cummerata",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-30T12:44:25.341Z",
      amount = -11225.47,
      transactionProduct = "Pizza",
      merchantCountry = "Cocos (Keeling) Islands",
      merchantName = "Dach - Kuhlman",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-30T19:18:52.455Z",
      amount = -2516.41,
      transactionProduct = "Salad",
      merchantCountry = "Gabon",
      merchantName = "Mertz, Roberts and Koepp",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-08-30T22:27:51.815Z",
      amount = -1520.33,
      transactionProduct = "Bacon",
      merchantCountry = "Nicaragua",
      merchantName = "Cartwright, Gusikowski and Friesen",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-08-31T03:58:30.930Z",
      amount = -2242.36,
      transactionProduct = "Chips",
      merchantCountry = "Mexico",
      merchantName = "Kunze - Howe",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-31T06:16:40.313Z",
      amount = -15957.42,
      transactionProduct = "Fish",
      merchantCountry = "Peru",
      merchantName = "Lindgren, Waters and Stehr",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-08-31T22:16:50.173Z",
      amount = -12971.81,
      transactionProduct = "Table",
      merchantCountry = "Slovakia (Slovak Republic)",
      merchantName = "Heller, Franey and Kilback",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-01T12:14:19.372Z",
      amount = -8172.39,
      transactionProduct = "Sausages",
      merchantCountry = "Portugal",
      merchantName = "Herzog - Mertz",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-03T04:33:27.476Z",
      amount = -24273.06,
      transactionProduct = "Bike",
      merchantCountry = "Georgia",
      merchantName = "Purdy, Bartoletti and Schneider",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-03T10:33:48.576Z",
      amount = -12612.99,
      transactionProduct = "Pants",
      merchantCountry = "Republic of Korea",
      merchantName = "Toy, Towne and Hilpert",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-03T11:46:18.521Z",
      amount = -23772.37,
      transactionProduct = "Pants",
      merchantCountry = "Seychelles",
      merchantName = "Effertz and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-03T15:52:01.585Z",
      amount = -18429.75,
      transactionProduct = "Pants",
      merchantCountry = "Macao",
      merchantName = "O'Conner - Sauer",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-03T19:16:25.026Z",
      amount = -5156.39,
      transactionProduct = "Cheese",
      merchantCountry = "Belize",
      merchantName = "Heathcote - Cremin",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-04T13:44:39.750Z",
      amount = -1401.39,
      transactionProduct = "Shirt",
      merchantCountry = "Virgin Islands, British",
      merchantName = "Wilderman - Ratke",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-04T21:51:36.025Z",
      amount = -24390.04,
      transactionProduct = "Ball",
      merchantCountry = "Cocos (Keeling) Islands",
      merchantName = "Smith Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-04T22:24:34.048Z",
      amount = -8649.33,
      transactionProduct = "Pants",
      merchantCountry = "Martinique",
      merchantName = "Dietrich, Bednar and Hartmann",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-05T00:22:19.774Z",
      amount = -17150.03,
      transactionProduct = "Gloves",
      merchantCountry = "Myanmar",
      merchantName = "Sauer - Bartell",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-05T07:34:14.237Z",
      amount = -4359.85,
      transactionProduct = "Pizza",
      merchantCountry = "Thailand",
      merchantName = "Fadel, Tremblay and Gulgowski",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-05T21:38:55.897Z",
      amount = -18879.38,
      transactionProduct = "Pants",
      merchantCountry = "Slovakia (Slovak Republic)",
      merchantName = "Gislason, Bode and Pfannerstill",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-05T23:14:57.586Z",
      amount = -26666.14,
      transactionProduct = "Hat",
      merchantCountry = "Indonesia",
      merchantName = "Metz - Predovic",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-06T13:53:23.278Z",
      amount = -25362.29,
      transactionProduct = "Sausages",
      merchantCountry = "Lebanon",
      merchantName = "Schowalter - Cartwright",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-06T22:21:12.235Z",
      amount = -17675.14,
      transactionProduct = "Salad",
      merchantCountry = "Malaysia",
      merchantName = "Pacocha - Padberg",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-06T23:31:47.497Z",
      amount = -19413.13,
      transactionProduct = "Tuna",
      merchantCountry = "Lithuania",
      merchantName = "Runte and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-07T04:35:35.767Z",
      amount = -28866.65,
      transactionProduct = "Bike",
      merchantCountry = "Montserrat",
      merchantName = "Moore, Fritsch and Toy",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-07T10:10:29.198Z",
      amount = -29274.78,
      transactionProduct = "Tuna",
      merchantCountry = "Pakistan",
      merchantName = "Hermann Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-07T12:49:24.986Z",
      amount = -2226.17,
      transactionProduct = "Cheese",
      merchantCountry = "Andorra",
      merchantName = "Ondricka Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-08T03:42:49.149Z",
      amount = -13856.56,
      transactionProduct = "Car",
      merchantCountry = "Pitcairn Islands",
      merchantName = "Mraz - Barrows",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-09T22:48:55.359Z",
      amount = -25055.09,
      transactionProduct = "Mouse",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Gottlieb, Hilpert and Sawayn",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-10T03:24:32.486Z",
      amount = -19221.29,
      transactionProduct = "Shoes",
      merchantCountry = "Haiti",
      merchantName = "Sanford - Labadie",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-10T20:48:37.365Z",
      amount = -25575.54,
      transactionProduct = "Towels",
      merchantCountry = "Saint Vincent and the Grenadines",
      merchantName = "Frami, Gerlach and Runolfsdottir",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-11T02:57:16.568Z",
      amount = -4360.22,
      transactionProduct = "Gloves",
      merchantCountry = "Liberia",
      merchantName = "Bruen, Lemke and Schroeder",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-12T04:52:17.023Z",
      amount = -2079.11,
      transactionProduct = "Sausages",
      merchantCountry = "Eritrea",
      merchantName = "Emmerich, Kling and Terry",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-12T09:28:36.539Z",
      amount = -29358.17,
      transactionProduct = "Computer",
      merchantCountry = "Hungary",
      merchantName = "Kuvalis - Bayer",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-12T09:29:13.582Z",
      amount = -18778.82,
      transactionProduct = "Towels",
      merchantCountry = "Cocos (Keeling) Islands",
      merchantName = "Carter, MacGyver and Pacocha",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-12T10:00:00.000Z",
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      amount = 38000,
      transactionType = "salary"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-12T17:05:36.327Z",
      amount = -12685.11,
      transactionProduct = "Tuna",
      merchantCountry = "United Arab Emirates",
      merchantName = "Heathcote, Leannon and Lubowitz",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-12T22:14:19.414Z",
      amount = -1692.74,
      transactionProduct = "Chicken",
      merchantCountry = "Portugal",
      merchantName = "Hauck Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-14T07:26:48.866Z",
      amount = -22891.15,
      transactionProduct = "Table",
      merchantCountry = "Cote d'Ivoire",
      merchantName = "Blanda LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-15T10:57:26.236Z",
      amount = -640.09,
      transactionProduct = "Fish",
      merchantCountry = "Libyan Arab Jamahiriya",
      merchantName = "Mayert Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-15T19:07:19.077Z",
      amount = -17177.54,
      transactionProduct = "Chips",
      merchantCountry = "Tajikistan",
      merchantName = "Wisozk, Lockman and Skiles",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-16T20:48:53.055Z",
      amount = -14027.98,
      transactionProduct = "Car",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Bogan and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-17T07:22:58.214Z",
      amount = -22958.21,
      transactionProduct = "Chips",
      merchantCountry = "Anguilla",
      merchantName = "Sawayn LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-17T17:19:07.176Z",
      amount = -19531.85,
      transactionProduct = "Soap",
      merchantCountry = "Senegal",
      merchantName = "Funk and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-18T00:33:15.229Z",
      amount = -29225.81,
      transactionProduct = "Table",
      merchantCountry = "Botswana",
      merchantName = "Ledner LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-18T08:03:35.758Z",
      amount = -5026.06,
      transactionProduct = "Cheese",
      merchantCountry = "Guatemala",
      merchantName = "Heaney Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-18T10:04:59.602Z",
      amount = -21513.07,
      transactionProduct = "Hat",
      merchantCountry = "Iran",
      merchantName = "King Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-19T00:34:17.569Z",
      amount = -3139.57,
      transactionProduct = "Computer",
      merchantCountry = "Uzbekistan",
      merchantName = "Ferry, Langosh and McClure",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-19T04:31:01.169Z",
      amount = -25606.09,
      transactionProduct = "Mouse",
      merchantCountry = "Indonesia",
      merchantName = "Predovic, Larkin and Macejkovic",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-19T04:33:32.910Z",
      amount = -4190.75,
      transactionProduct = "Towels",
      merchantCountry = "Gibraltar",
      merchantName = "Mertz - Barrows",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-19T05:29:49.828Z",
      amount = -28050.26,
      transactionProduct = "Soap",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Gibson and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-19T08:19:52.657Z",
      amount = -22478.87,
      transactionProduct = "Fish",
      merchantCountry = "Netherlands",
      merchantName = "Medhurst, Jenkins and Hessel",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-19T09:43:47.802Z",
      amount = -21185.98,
      transactionProduct = "Fish",
      merchantCountry = "Paraguay",
      merchantName = "Block Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-20T05:23:42.666Z",
      amount = -3957.19,
      transactionProduct = "Gloves",
      merchantCountry = "Slovakia (Slovak Republic)",
      merchantName = "Shanahan - Grant",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-20T09:31:27.058Z",
      amount = -9377.06,
      transactionProduct = "Salad",
      merchantCountry = "Hong Kong",
      merchantName = "Mills - Sanford",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-20T12:23:00.957Z",
      amount = -14187.14,
      transactionProduct = "Ball",
      merchantCountry = "Gambia",
      merchantName = "VonRueden and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-20T13:11:35.544Z",
      amount = -14033.42,
      transactionProduct = "Keyboard",
      merchantCountry = "Sao Tome and Principe",
      merchantName = "Greenfelder LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-21T10:56:13.126Z",
      amount = -19559.16,
      transactionProduct = "Bacon",
      merchantCountry = "Sierra Leone",
      merchantName = "Prohaska and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-21T19:43:50.598Z",
      amount = -360.75,
      transactionProduct = "Chicken",
      merchantCountry = "Palestinian Territory",
      merchantName = "Fahey, Kessler and Ledner",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-22T00:10:16.557Z",
      amount = -20020.05,
      transactionProduct = "Table",
      merchantCountry = "Slovenia",
      merchantName = "Kreiger - Wehner",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-22T06:26:18.876Z",
      amount = -25924.22,
      transactionProduct = "Table",
      merchantCountry = "Falkland Islands (Malvinas)",
      merchantName = "Satterfield - Cassin",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-22T06:40:35.670Z",
      amount = -8793.65,
      transactionProduct = "Table",
      merchantCountry = "Serbia",
      merchantName = "Spinka - Koss",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-24T17:30:12.683Z",
      amount = -17175.06,
      transactionProduct = "Table",
      merchantCountry = "Andorra",
      merchantName = "Blick - Walsh",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-24T18:37:36.342Z",
      amount = -15407.62,
      transactionProduct = "Bacon",
      merchantCountry = "Belize",
      merchantName = "Larkin, Murphy and O'Conner",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-25T07:52:33.029Z",
      amount = -22380.49,
      transactionProduct = "Shoes",
      merchantCountry = "South Africa",
      merchantName = "Bashirian, Kozey and Wolf",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-25T10:00:29.464Z",
      amount = -3679.42,
      transactionProduct = "Table",
      merchantCountry = "Cayman Islands",
      merchantName = "Barton - Lowe",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-25T12:18:39.677Z",
      amount = -3337.42,
      transactionProduct = "Pizza",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Heidenreich, Ward and Altenwerth",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-26T09:28:50.008Z",
      amount = -27941.04,
      transactionProduct = "Tuna",
      merchantCountry = "Anguilla",
      merchantName = "Zemlak - Wintheiser",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-26T10:03:51.239Z",
      amount = -29075.15,
      transactionProduct = "Keyboard",
      merchantCountry = "Hong Kong",
      merchantName = "Herman - Stracke",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-26T11:43:29.335Z",
      amount = -3924.42,
      transactionProduct = "Fish",
      merchantCountry = "Belgium",
      merchantName = "Kirlin - Deckow",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-26T12:22:26.358Z",
      amount = -29068.85,
      transactionProduct = "Fish",
      merchantCountry = "Hungary",
      merchantName = "Spencer, Schaefer and Shanahan",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-26T16:48:39.144Z",
      amount = -9969.98,
      transactionProduct = "Bike",
      merchantCountry = "Philippines",
      merchantName = "Hills and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-26T18:49:46.423Z",
      amount = -19350.77,
      transactionProduct = "Shoes",
      merchantCountry = "Qatar",
      merchantName = "Cruickshank Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-27T00:07:48.800Z",
      amount = -18631.64,
      transactionProduct = "Hat",
      merchantCountry = "Tuvalu",
      merchantName = "Miller LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-27T04:35:22.075Z",
      amount = -14766.28,
      transactionProduct = "Salad",
      merchantCountry = "Zambia",
      merchantName = "Dicki LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-27T08:48:58.660Z",
      amount = -12620.13,
      transactionProduct = "Chicken",
      merchantCountry = "Saint Lucia",
      merchantName = "Barrows - Hessel",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-27T20:58:40.470Z",
      amount = -6757.14,
      transactionProduct = "Bike",
      merchantCountry = "French Guiana",
      merchantName = "Gleason - Swaniawski",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-28T09:40:03.889Z",
      amount = -12739.87,
      transactionProduct = "Mouse",
      merchantCountry = "Guinea",
      merchantName = "Bruen LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-28T09:47:57.623Z",
      amount = -5436.44,
      transactionProduct = "Hat",
      merchantCountry = "Swaziland",
      merchantName = "Ratke LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-28T20:09:44.202Z",
      amount = -22508.39,
      transactionProduct = "Cheese",
      merchantCountry = "Malaysia",
      merchantName = "Heller, Flatley and McDermott",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-09-28T23:32:31.655Z",
      amount = -1846.8,
      transactionProduct = "Chair",
      merchantCountry = "Gambia",
      merchantName = "Klein - Connelly",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-29T02:13:23.558Z",
      amount = -19864.41,
      transactionProduct = "Fish",
      merchantCountry = "Sri Lanka",
      merchantName = "Dooley - Runte",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-09-29T14:31:52.371Z",
      amount = -3148.31,
      transactionProduct = "Car",
      merchantCountry = "Niger",
      merchantName = "Ryan Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-09-29T22:37:01.342Z",
      amount = -24919.36,
      transactionProduct = "Keyboard",
      merchantCountry = "Lao People's Democratic Republic",
      merchantName = "Marquardt, Collins and Denesik",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-09-29T23:38:34.753Z",
      amount = -22374.68,
      transactionProduct = "Bacon",
      merchantCountry = "Malaysia",
      merchantName = "Hermann, Volkman and Collins",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-09-30T03:54:05.654Z",
      amount = -9132.74,
      transactionProduct = "Chair",
      merchantCountry = "Trinidad and Tobago",
      merchantName = "Frami - Boyer",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-09-30T10:09:45.431Z",
      amount = -4270.54,
      transactionProduct = "Pizza",
      merchantCountry = "Malawi",
      merchantName = "Purdy LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-01T20:43:07.050Z",
      amount = -13490.99,
      transactionProduct = "Tuna",
      merchantCountry = "Russian Federation",
      merchantName = "Marks and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-01T21:00:44.619Z",
      amount = -10863.51,
      transactionProduct = "Hat",
      merchantCountry = "British Indian Ocean Territory (Chagos Archipelago)",
      merchantName = "Wilderman, Rutherford and Hackett",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-01T21:41:46.943Z",
      amount = -27329.57,
      transactionProduct = "Chicken",
      merchantCountry = "Albania",
      merchantName = "Larkin - Wunsch",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-02T01:54:07.062Z",
      amount = -19947.49,
      transactionProduct = "Car",
      merchantCountry = "Dominica",
      merchantName = "Kohler - Mann",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-02T05:44:53.527Z",
      amount = -11975.69,
      transactionProduct = "Salad",
      merchantCountry = "Iraq",
      merchantName = "Hartmann, Harris and Hodkiewicz",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-02T11:57:24.997Z",
      amount = -26861.13,
      transactionProduct = "Sausages",
      merchantCountry = "Taiwan",
      merchantName = "Renner LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-02T15:02:15.716Z",
      amount = -22683.96,
      transactionProduct = "Shirt",
      merchantCountry = "Guam",
      merchantName = "Gusikowski Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-02T17:12:48.496Z",
      amount = -428.45,
      transactionProduct = "Soap",
      merchantCountry = "Saint Helena",
      merchantName = "Runte, Tremblay and Ledner",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-02T17:26:48.726Z",
      amount = -22082.67,
      transactionProduct = "Shoes",
      merchantCountry = "Niger",
      merchantName = "Little - Blanda",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-03T00:15:38.252Z",
      amount = -388.96,
      transactionProduct = "Bike",
      merchantCountry = "Ghana",
      merchantName = "Willms Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-03T02:40:24.258Z",
      amount = -3309.65,
      transactionProduct = "Bike",
      merchantCountry = "Kazakhstan",
      merchantName = "Maggio - Gleason",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-03T03:44:12.464Z",
      amount = -14377.83,
      transactionProduct = "Shoes",
      merchantCountry = "Vanuatu",
      merchantName = "Pacocha Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-03T20:28:07.072Z",
      amount = -9429.38,
      transactionProduct = "Table",
      merchantCountry = "Samoa",
      merchantName = "McGlynn - Schinner",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-04T08:52:40.046Z",
      amount = -29224.74,
      transactionProduct = "Mouse",
      merchantCountry = "Barbados",
      merchantName = "Hane LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-04T19:50:40.967Z",
      amount = -10433.54,
      transactionProduct = "Pants",
      merchantCountry = "Nepal",
      merchantName = "Nolan, Rowe and Borer",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-04T23:02:37.627Z",
      amount = -22418.01,
      transactionProduct = "Hat",
      merchantCountry = "Sudan",
      merchantName = "Nader, Carroll and Harber",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-05T02:51:35.011Z",
      amount = -23361.17,
      transactionProduct = "Ball",
      merchantCountry = "Mongolia",
      merchantName = "Johnson, Littel and Johnston",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-05T05:20:27.382Z",
      amount = -15158.52,
      transactionProduct = "Fish",
      merchantCountry = "Netherlands Antilles",
      merchantName = "Erdman, Reichert and King",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-05T14:51:43.904Z",
      amount = -21323,
      transactionProduct = "Car",
      merchantCountry = "Virgin Islands, British",
      merchantName = "Mitchell - Murray",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-05T21:06:36.476Z",
      amount = -2602.19,
      transactionProduct = "Gloves",
      merchantCountry = "Indonesia",
      merchantName = "Spencer - Kuhlman",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-05T22:40:28.841Z",
      amount = -2638.5,
      transactionProduct = "Hat",
      merchantCountry = "Pakistan",
      merchantName = "Nader, Schaden and Hilpert",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-06T01:21:51.855Z",
      amount = -14090.87,
      transactionProduct = "Chips",
      merchantCountry = "Andorra",
      merchantName = "Reichel, Klein and Schoen",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-06T01:53:23.963Z",
      amount = -10821.47,
      transactionProduct = "Computer",
      merchantCountry = "American Samoa",
      merchantName = "Brekke Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-06T15:33:32.422Z",
      amount = -18141.93,
      transactionProduct = "Table",
      merchantCountry = "Cape Verde",
      merchantName = "Kutch Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-06T15:52:27.286Z",
      amount = -20258.81,
      transactionProduct = "Sausages",
      merchantCountry = "Saint Pierre and Miquelon",
      merchantName = "Lemke - Olson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-06T16:03:05.992Z",
      amount = -9804.41,
      transactionProduct = "Shirt",
      merchantCountry = "Aruba",
      merchantName = "Mills and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-06T18:28:35.194Z",
      amount = -22155.31,
      transactionProduct = "Tuna",
      merchantCountry = "Nauru",
      merchantName = "Koch, Douglas and Rutherford",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-07T07:20:24.132Z",
      amount = -15174.26,
      transactionProduct = "Chips",
      merchantCountry = "Nepal",
      merchantName = "Kiehn - Reichert",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-07T15:19:22.348Z",
      amount = -26473.23,
      transactionProduct = "Chips",
      merchantCountry = "Russian Federation",
      merchantName = "Sawayn LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-07T16:19:32.627Z",
      amount = -9305.53,
      transactionProduct = "Chips",
      merchantCountry = "Philippines",
      merchantName = "Langosh and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-08T10:15:38.537Z",
      amount = -17369.82,
      transactionProduct = "Keyboard",
      merchantCountry = "Equatorial Guinea",
      merchantName = "Weissnat, Hessel and Mann",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-08T21:04:42.534Z",
      amount = -20344.56,
      transactionProduct = "Fish",
      merchantCountry = "Cape Verde",
      merchantName = "O'Keefe, Abbott and Volkman",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-08T22:39:15.136Z",
      amount = -3991.69,
      transactionProduct = "Salad",
      merchantCountry = "Kazakhstan",
      merchantName = "Walter LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-09T07:25:11.333Z",
      amount = -13700.89,
      transactionProduct = "Keyboard",
      merchantCountry = "United Arab Emirates",
      merchantName = "Koepp, O'Connell and Jakubowski",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-09T10:55:33.444Z",
      amount = -22797.29,
      transactionProduct = "Keyboard",
      merchantCountry = "Equatorial Guinea",
      merchantName = "Heidenreich - Bednar",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-10T02:42:43.665Z",
      amount = -28778.09,
      transactionProduct = "Pants",
      merchantCountry = "Japan",
      merchantName = "Reilly - Vandervort",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-10T23:18:50.998Z",
      amount = -9403.83,
      transactionProduct = "Computer",
      merchantCountry = "Nicaragua",
      merchantName = "Upton, Braun and Raynor",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-11T04:47:49.843Z",
      amount = -27161.29,
      transactionProduct = "Table",
      merchantCountry = "Cameroon",
      merchantName = "Funk, Jast and Cronin",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-11T21:09:11.594Z",
      amount = -8883.19,
      transactionProduct = "Pizza",
      merchantCountry = "Tokelau",
      merchantName = "Kris Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-11T23:30:38.036Z",
      amount = -26218.67,
      transactionProduct = "Chair",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Wilkinson, Roob and Hintz",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-12T10:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-12T13:13:24.132Z",
      amount = -15537.55,
      transactionProduct = "Table",
      merchantCountry = "Finland",
      merchantName = "Gerhold, Bechtelar and Lockman",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-12T18:31:22.963Z",
      amount = -13726.88,
      transactionProduct = "Bacon",
      merchantCountry = "Slovenia",
      merchantName = "Rodriguez - Koch",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-13T06:18:28.700Z",
      amount = -20763.08,
      transactionProduct = "Salad",
      merchantCountry = "Norway",
      merchantName = "Schneider and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-13T07:23:03.215Z",
      amount = -18003.74,
      transactionProduct = "Car",
      merchantCountry = "United States Minor Outlying Islands",
      merchantName = "Ryan - Franecki",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-13T14:26:45.331Z",
      amount = -13313.05,
      transactionProduct = "Bike",
      merchantCountry = "Cambodia",
      merchantName = "O'Hara, Mertz and Murray",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-14T14:22:10.069Z",
      amount = -21168.69,
      transactionProduct = "Keyboard",
      merchantCountry = "Tunisia",
      merchantName = "Fritsch, Mills and Powlowski",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-14T22:12:28.145Z",
      amount = -8718.35,
      transactionProduct = "Shoes",
      merchantCountry = "Cuba",
      merchantName = "Fahey, Crooks and Johns",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-15T05:20:52.142Z",
      amount = -2655.98,
      transactionProduct = "Hat",
      merchantCountry = "Botswana",
      merchantName = "Schiller Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-15T05:46:09.861Z",
      amount = -28066.2,
      transactionProduct = "Bike",
      merchantCountry = "India",
      merchantName = "Fisher, Dooley and Ryan",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-15T08:57:47.871Z",
      amount = -28965.13,
      transactionProduct = "Chips",
      merchantCountry = "Niue",
      merchantName = "Pfannerstill LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-16T03:40:50.507Z",
      amount = -25246.29,
      transactionProduct = "Computer",
      merchantCountry = "Mauritius",
      merchantName = "Hane Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-16T06:33:03.601Z",
      amount = -9304.72,
      transactionProduct = "Soap",
      merchantCountry = "Gambia",
      merchantName = "Beahan - Price",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-16T14:57:06.679Z",
      amount = -976.99,
      transactionProduct = "Chicken",
      merchantCountry = "Bahrain",
      merchantName = "Yundt, Ratke and Stark",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-16T16:14:22.572Z",
      amount = -14561.47,
      transactionProduct = "Shirt",
      merchantCountry = "United Arab Emirates",
      merchantName = "Durgan Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-16T23:05:49.721Z",
      amount = -11044.43,
      transactionProduct = "Sausages",
      merchantCountry = "Tanzania",
      merchantName = "Prosacco and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-17T06:01:50.806Z",
      amount = -14440.54,
      transactionProduct = "Computer",
      merchantCountry = "Slovenia",
      merchantName = "Mante, Wiegand and Mann",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-17T06:05:31.221Z",
      amount = -9654.47,
      transactionProduct = "Pants",
      merchantCountry = "India",
      merchantName = "Satterfield, Torp and Zieme",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-17T16:18:45.930Z",
      amount = -10081.12,
      transactionProduct = "Car",
      merchantCountry = "Somalia",
      merchantName = "Ziemann and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-18T01:03:48.122Z",
      amount = -25438.14,
      transactionProduct = "Chips",
      merchantCountry = "Jersey",
      merchantName = "Bergnaum - Mertz",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-18T10:12:00.178Z",
      amount = -25310.14,
      transactionProduct = "Hat",
      merchantCountry = "France",
      merchantName = "Zboncak - Stroman",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-19T22:51:56.569Z",
      amount = -18905.52,
      transactionProduct = "Pizza",
      merchantCountry = "Chad",
      merchantName = "Mitchell - Orn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-20T00:31:24.371Z",
      amount = -18013.38,
      transactionProduct = "Chips",
      merchantCountry = "Guinea-Bissau",
      merchantName = "Rath - Rolfson",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-20T04:02:01.078Z",
      amount = -2034.46,
      transactionProduct = "Ball",
      merchantCountry = "Latvia",
      merchantName = "Braun and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-20T07:01:51.414Z",
      amount = -5663.36,
      transactionProduct = "Chips",
      merchantCountry = "Virgin Islands, U.S.",
      merchantName = "Price LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-20T14:54:38.912Z",
      amount = -7262.78,
      transactionProduct = "Mouse",
      merchantCountry = "Uzbekistan",
      merchantName = "Robel - Barton",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-20T15:36:50.387Z",
      amount = -8643.25,
      transactionProduct = "Shoes",
      merchantCountry = "Sao Tome and Principe",
      merchantName = "Steuber, Watsica and McCullough",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-20T21:57:15.495Z",
      amount = -19928.89,
      transactionProduct = "Cheese",
      merchantCountry = "Papua New Guinea",
      merchantName = "Zulauf, Dietrich and Crona",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-21T04:01:23.325Z",
      amount = -13966.63,
      transactionProduct = "Ball",
      merchantCountry = "Germany",
      merchantName = "Johnson - Barton",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-21T10:39:41.569Z",
      amount = -15930.8,
      transactionProduct = "Sausages",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "Lowe - Lynch",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-22T01:26:43.721Z",
      amount = -19371.88,
      transactionProduct = "Towels",
      merchantCountry = "Northern Mariana Islands",
      merchantName = "Mayert Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-22T08:04:51.817Z",
      amount = -13059.2,
      transactionProduct = "Salad",
      merchantCountry = "Ireland",
      merchantName = "Pfeffer - Ondricka",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-22T11:19:36.402Z",
      amount = -10450.68,
      transactionProduct = "Bike",
      merchantCountry = "Cameroon",
      merchantName = "Schuppe - Veum",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-22T17:29:00.115Z",
      amount = -2475.49,
      transactionProduct = "Soap",
      merchantCountry = "Armenia",
      merchantName = "Little - Towne",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-22T17:42:51.071Z",
      amount = -22025.87,
      transactionProduct = "Pants",
      merchantCountry = "Norfolk Island",
      merchantName = "Adams, Gleason and Watsica",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-23T01:47:09.694Z",
      amount = -24435.19,
      transactionProduct = "Ball",
      merchantCountry = "Algeria",
      merchantName = "Denesik Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-23T12:31:53.426Z",
      amount = -25553.65,
      transactionProduct = "Cheese",
      merchantCountry = "Nicaragua",
      merchantName = "Beer, Nikolaus and Greenholt",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-24T06:05:46.429Z",
      amount = -2763.24,
      transactionProduct = "Computer",
      merchantCountry = "Malawi",
      merchantName = "Barrows LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-24T07:57:41.960Z",
      amount = -10680.27,
      transactionProduct = "Car",
      merchantCountry = "Netherlands Antilles",
      merchantName = "Nader - Hamill",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-24T09:20:03.832Z",
      amount = -8783.6,
      transactionProduct = "Ball",
      merchantCountry = "Palestinian Territory",
      merchantName = "Tillman - Russel",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-24T23:43:02.417Z",
      amount = -1602.7,
      transactionProduct = "Mouse",
      merchantCountry = "Saint Lucia",
      merchantName = "Schulist - Rodriguez",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-25T00:17:10.305Z",
      amount = -10425.84,
      transactionProduct = "Computer",
      merchantCountry = "Nauru",
      merchantName = "Lesch - Padberg",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-25T18:07:42.019Z",
      amount = -10162.86,
      transactionProduct = "Keyboard",
      merchantCountry = "Cape Verde",
      merchantName = "Nicolas - Shields",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-25T22:05:14.248Z",
      amount = -21351.09,
      transactionProduct = "Sausages",
      merchantCountry = "French Southern Territories",
      merchantName = "Kassulke - Hoeger",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-26T07:13:42.524Z",
      amount = -17643.28,
      transactionProduct = "Towels",
      merchantCountry = "Zimbabwe",
      merchantName = "Turcotte, Rutherford and Beer",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-10-26T15:35:44.200Z",
      amount = -19629.28,
      transactionProduct = "Fish",
      merchantCountry = "Antarctica (the territory South of 60 deg S)",
      merchantName = "Zboncak Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-27T02:45:45.131Z",
      amount = -15732.96,
      transactionProduct = "Shoes",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "O'Hara, Stehr and Renner",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-27T04:20:21.331Z",
      amount = -8240.48,
      transactionProduct = "Bike",
      merchantCountry = "Saudi Arabia",
      merchantName = "Hahn, Batz and Hills",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-27T16:00:36.847Z",
      amount = -9925.27,
      transactionProduct = "Keyboard",
      merchantCountry = "Pakistan",
      merchantName = "Osinski - Koelpin",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-27T18:43:52.180Z",
      amount = -24326.72,
      transactionProduct = "Gloves",
      merchantCountry = "Burkina Faso",
      merchantName = "Braun - Upton",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-28T10:10:53.839Z",
      amount = -13138.98,
      transactionProduct = "Computer",
      merchantCountry = "Madagascar",
      merchantName = "Kihn - Willms",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-28T18:08:59.130Z",
      amount = -24436,
      transactionProduct = "Keyboard",
      merchantCountry = "Australia",
      merchantName = "Bartell Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-29T06:34:22.401Z",
      amount = -20446.46,
      transactionProduct = "Mouse",
      merchantCountry = "Liechtenstein",
      merchantName = "Daugherty - Hartmann",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-29T06:52:20.038Z",
      amount = -25001.08,
      transactionProduct = "Soap",
      merchantCountry = "Slovenia",
      merchantName = "Reinger - Zboncak",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-29T12:00:39.842Z",
      amount = -17485.24,
      transactionProduct = "Pizza",
      merchantCountry = "Latvia",
      merchantName = "Roob, McLaughlin and Hagenes",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-10-30T13:52:28.385Z",
      amount = -11985.51,
      transactionProduct = "Shoes",
      merchantCountry = "Macao",
      merchantName = "Fay and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-10-30T22:24:27.253Z",
      amount = -6549.34,
      transactionProduct = "Keyboard",
      merchantCountry = "Netherlands Antilles",
      merchantName = "Murazik Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-10-30T23:06:19.982Z",
      amount = -21736.48,
      transactionProduct = "Tuna",
      merchantCountry = "Niue",
      merchantName = "Mertz - Sporer",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-31T08:46:44.538Z",
      amount = -1319.27,
      transactionProduct = "Cheese",
      merchantCountry = "Montenegro",
      merchantName = "Torphy LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-10-31T13:04:54.449Z",
      amount = -25502.92,
      transactionProduct = "Mouse",
      merchantCountry = "Cayman Islands",
      merchantName = "Schamberger - Hagenes",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-10-31T18:14:02.759Z",
      amount = -18518.71,
      transactionProduct = "Fish",
      merchantCountry = "Ecuador",
      merchantName = "Kling Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-01T02:46:11.436Z",
      amount = -15304.08,
      transactionProduct = "Shirt",
      merchantCountry = "Svalbard & Jan Mayen Islands",
      merchantName = "O'Connell Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-01T13:20:52.624Z",
      amount = -10709.3,
      transactionProduct = "Ball",
      merchantCountry = "Cote d'Ivoire",
      merchantName = "Cormier, Stark and Turcotte",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-01T14:23:56.158Z",
      amount = -4376.16,
      transactionProduct = "Pizza",
      merchantCountry = "Jordan",
      merchantName = "Anderson - Luettgen",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-01T15:22:43.129Z",
      amount = -19952.61,
      transactionProduct = "Hat",
      merchantCountry = "Vietnam",
      merchantName = "O'Connell, Gerlach and Kuvalis",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-01T20:52:41.874Z",
      amount = -3241.55,
      transactionProduct = "Bike",
      merchantCountry = "Mauritius",
      merchantName = "Cremin - Runolfsson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-02T06:08:31.635Z",
      amount = -28307.4,
      transactionProduct = "Chicken",
      merchantCountry = "Macedonia",
      merchantName = "Predovic Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-02T12:18:09.836Z",
      amount = -20618.57,
      transactionProduct = "Gloves",
      merchantCountry = "Virgin Islands, British",
      merchantName = "Lowe Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-02T13:38:24.204Z",
      amount = -7668.8,
      transactionProduct = "Gloves",
      merchantCountry = "France",
      merchantName = "Hagenes and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-02T17:52:26.304Z",
      amount = -4249.23,
      transactionProduct = "Hat",
      merchantCountry = "Guinea",
      merchantName = "Rodriguez Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-03T14:30:07.343Z",
      amount = -11067.02,
      transactionProduct = "Car",
      merchantCountry = "Tanzania",
      merchantName = "Reynolds Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-03T16:57:18.812Z",
      amount = -2251.01,
      transactionProduct = "Keyboard",
      merchantCountry = "Equatorial Guinea",
      merchantName = "Bogan, Bauch and Will",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-04T02:59:38.580Z",
      amount = -17969.31,
      transactionProduct = "Hat",
      merchantCountry = "Virgin Islands, U.S.",
      merchantName = "Auer and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-04T05:57:57.758Z",
      amount = -17981.16,
      transactionProduct = "Table",
      merchantCountry = "Spain",
      merchantName = "Gulgowski - Goodwin",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-04T10:35:41.874Z",
      amount = -542.49,
      transactionProduct = "Computer",
      merchantCountry = "Swaziland",
      merchantName = "Roberts Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-04T18:02:56.813Z",
      amount = -7871.33,
      transactionProduct = "Chicken",
      merchantCountry = "Algeria",
      merchantName = "Flatley - Donnelly",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-06T02:53:41.215Z",
      amount = -17906.42,
      transactionProduct = "Mouse",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Beier - Kutch",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-06T20:28:19.221Z",
      amount = -21357.48,
      transactionProduct = "Keyboard",
      merchantCountry = "Gabon",
      merchantName = "Toy and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-07T09:42:11.727Z",
      amount = -11810.37,
      transactionProduct = "Bike",
      merchantCountry = "Denmark",
      merchantName = "Schaden - Hahn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-07T18:15:13.961Z",
      amount = -16544.6,
      transactionProduct = "Computer",
      merchantCountry = "Rwanda",
      merchantName = "Turner, Pagac and Hilpert",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-07T23:29:49.579Z",
      amount = -10951.16,
      transactionProduct = "Chair",
      merchantCountry = "Qatar",
      merchantName = "Steuber - Dibbert",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-08T04:32:42.163Z",
      amount = -373.14,
      transactionProduct = "Hat",
      merchantCountry = "Tunisia",
      merchantName = "Schinner Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-08T06:06:18.360Z",
      amount = -5963.73,
      transactionProduct = "Cheese",
      merchantCountry = "Tanzania",
      merchantName = "Hilpert - Crist",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-08T22:02:16.370Z",
      amount = -25877.98,
      transactionProduct = "Chips",
      merchantCountry = "Dominican Republic",
      merchantName = "Harber, Runte and Stiedemann",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-09T10:06:59.074Z",
      amount = -20238.26,
      transactionProduct = "Salad",
      merchantCountry = "Pitcairn Islands",
      merchantName = "Fay, Keebler and Donnelly",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-10T01:09:45.669Z",
      amount = -19314.42,
      transactionProduct = "Table",
      merchantCountry = "Suriname",
      merchantName = "Leuschke, O'Reilly and Fahey",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-10T07:01:14.243Z",
      amount = -21283.43,
      transactionProduct = "Chair",
      merchantCountry = "Macedonia",
      merchantName = "Kertzmann and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-10T10:23:44.139Z",
      amount = -9156.87,
      transactionProduct = "Ball",
      merchantCountry = "Tunisia",
      merchantName = "Schimmel - Hills",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-10T20:41:10.117Z",
      amount = -9054.67,
      transactionProduct = "Table",
      merchantCountry = "Cambodia",
      merchantName = "Upton LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-11T00:36:44.814Z",
      amount = -9111.92,
      transactionProduct = "Pants",
      merchantCountry = "Chad",
      merchantName = "Veum, Stark and Corkery",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-12T07:04:17.429Z",
      amount = -28588.69,
      transactionProduct = "Pizza",
      merchantCountry = "Christmas Island",
      merchantName = "Lynch LLC",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-12T07:57:48.883Z",
      amount = -3305.55,
      transactionProduct = "Ball",
      merchantCountry = "Belize",
      merchantName = "Monahan - Leffler",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-12T11:00:00.000Z",
      amount = 38000,
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      transactionType = "salary"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-12T12:46:39.798Z",
      amount = -10296.27,
      transactionProduct = "Cheese",
      merchantCountry = "Costa Rica",
      merchantName = "Schmeler - Romaguera",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-12T14:11:49.492Z",
      amount = -3985.51,
      transactionProduct = "Pants",
      merchantCountry = "Tajikistan",
      merchantName = "Schulist, Koch and Lesch",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-13T04:39:34.245Z",
      amount = -7637.67,
      transactionProduct = "Towels",
      merchantCountry = "Djibouti",
      merchantName = "O'Connell and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-13T14:50:38.565Z",
      amount = -28090.58,
      transactionProduct = "Bacon",
      merchantCountry = "Papua New Guinea",
      merchantName = "Lang - Macejkovic",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-13T16:48:47.552Z",
      amount = -10125.35,
      transactionProduct = "Car",
      merchantCountry = "Georgia",
      merchantName = "Farrell Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-14T02:22:14.177Z",
      amount = -13805.45,
      transactionProduct = "Gloves",
      merchantCountry = "Sao Tome and Principe",
      merchantName = "Kshlerin, Paucek and Bauch",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-14T02:59:58.229Z",
      amount = -6267.52,
      transactionProduct = "Fish",
      merchantCountry = "Svalbard & Jan Mayen Islands",
      merchantName = "Mayer - Glover",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-14T10:31:16.391Z",
      amount = -27686.9,
      transactionProduct = "Chair",
      merchantCountry = "Kyrgyz Republic",
      merchantName = "Johnston Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-15T00:55:45.539Z",
      amount = -26765,
      transactionProduct = "Towels",
      merchantCountry = "Ghana",
      merchantName = "Ondricka and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-15T01:32:52.702Z",
      amount = -28151.57,
      transactionProduct = "Bacon",
      merchantCountry = "Seychelles",
      merchantName = "Schultz and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-15T06:52:05.766Z",
      amount = -4776.12,
      transactionProduct = "Hat",
      merchantCountry = "Gabon",
      merchantName = "Murphy and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-15T10:30:24.459Z",
      amount = -22915.12,
      transactionProduct = "Keyboard",
      merchantCountry = "Nauru",
      merchantName = "Vandervort - Mosciski",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-15T12:25:55.655Z",
      amount = -18505.9,
      transactionProduct = "Pants",
      merchantCountry = "Barbados",
      merchantName = "Nicolas - Bauch",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-16T13:08:39.652Z",
      amount = -1187.06,
      transactionProduct = "Gloves",
      merchantCountry = "Uzbekistan",
      merchantName = "Williamson Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-16T18:43:05.395Z",
      amount = -20767.54,
      transactionProduct = "Chair",
      merchantCountry = "Mali",
      merchantName = "Emmerich, Mosciski and Macejkovic",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-16T19:42:48.734Z",
      amount = -15975.31,
      transactionProduct = "Sausages",
      merchantCountry = "Ghana",
      merchantName = "Prohaska, Welch and Dicki",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-16T21:55:07.342Z",
      amount = -27048.37,
      transactionProduct = "Pizza",
      merchantCountry = "Greece",
      merchantName = "Satterfield - Pfeffer",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-17T03:16:33.827Z",
      amount = -3941.66,
      transactionProduct = "Hat",
      merchantCountry = "Finland",
      merchantName = "Robel and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-17T14:41:16.700Z",
      amount = -14396.71,
      transactionProduct = "Towels",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Boyer and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-18T23:09:13.354Z",
      amount = -15753.57,
      transactionProduct = "Sausages",
      merchantCountry = "Liechtenstein",
      merchantName = "Schiller LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-19T05:40:36.193Z",
      amount = -21484.52,
      transactionProduct = "Fish",
      merchantCountry = "Myanmar",
      merchantName = "Pagac - Satterfield",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-19T06:44:26.176Z",
      amount = -21908.31,
      transactionProduct = "Hat",
      merchantCountry = "Eritrea",
      merchantName = "Blanda, Abernathy and Feest",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-19T08:29:23.453Z",
      amount = -7801.85,
      transactionProduct = "Computer",
      merchantCountry = "Russian Federation",
      merchantName = "Littel Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-19T10:49:42.887Z",
      amount = -16708.17,
      transactionProduct = "Chicken",
      merchantCountry = "Tonga",
      merchantName = "Treutel and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-20T01:52:56.444Z",
      amount = -13733.22,
      transactionProduct = "Car",
      merchantCountry = "Canada",
      merchantName = "Adams - Lowe",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-20T02:05:40.002Z",
      amount = -20114.94,
      transactionProduct = "Cheese",
      merchantCountry = "Morocco",
      merchantName = "Reilly Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-20T05:43:23.774Z",
      amount = -24076.3,
      transactionProduct = "Mouse",
      merchantCountry = "Paraguay",
      merchantName = "Hickle, Prosacco and Morissette",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-20T06:46:50.643Z",
      amount = -28565.17,
      transactionProduct = "Soap",
      merchantCountry = "Burundi",
      merchantName = "Douglas - Ernser",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-21T00:41:22.084Z",
      amount = -21822.43,
      transactionProduct = "Table",
      merchantCountry = "Malaysia",
      merchantName = "Bashirian - Schultz",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-21T01:43:32.979Z",
      amount = -603.6,
      transactionProduct = "Soap",
      merchantCountry = "Bouvet Island (Bouvetoya)",
      merchantName = "Emmerich, Prohaska and Volkman",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-21T11:58:20.519Z",
      amount = -15144.63,
      transactionProduct = "Car",
      merchantCountry = "Marshall Islands",
      merchantName = "Stamm and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-21T12:04:18.468Z",
      amount = -21253.78,
      transactionProduct = "Salad",
      merchantCountry = "Myanmar",
      merchantName = "Jast Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-21T15:10:58.966Z",
      amount = -22544.98,
      transactionProduct = "Gloves",
      merchantCountry = "San Marino",
      merchantName = "Abbott, Oberbrunner and Effertz",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-21T19:24:39.743Z",
      amount = -20765.77,
      transactionProduct = "Bacon",
      merchantCountry = "Rwanda",
      merchantName = "Ernser and Sons",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-21T21:29:32.871Z",
      amount = -2836.76,
      transactionProduct = "Pants",
      merchantCountry = "Iran",
      merchantName = "Windler Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-21T21:56:18.965Z",
      amount = -4649.04,
      transactionProduct = "Gloves",
      merchantCountry = "Slovenia",
      merchantName = "Sporer, Goldner and Jenkins",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-21T23:24:35.240Z",
      amount = -14226.19,
      transactionProduct = "Computer",
      merchantCountry = "Heard Island and McDonald Islands",
      merchantName = "Hammes Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-22T20:23:33.823Z",
      amount = -2525.81,
      transactionProduct = "Chips",
      merchantCountry = "Gambia",
      merchantName = "Bernier - Schumm",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-22T20:48:48.099Z",
      amount = -21427.54,
      transactionProduct = "Shirt",
      merchantCountry = "Brazil",
      merchantName = "Russel, Hahn and Kuhn",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-22T21:26:07.935Z",
      amount = -22294.24,
      transactionProduct = "Pants",
      merchantCountry = "Vanuatu",
      merchantName = "Lockman Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-23T04:11:20.071Z",
      amount = -27503.74,
      transactionProduct = "Bacon",
      merchantCountry = "Kiribati",
      merchantName = "Price, McDermott and Hackett",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-23T05:21:16.183Z",
      amount = -19418.59,
      transactionProduct = "Chicken",
      merchantCountry = "Martinique",
      merchantName = "Kub LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-23T09:42:14.106Z",
      amount = -11269.51,
      transactionProduct = "Chicken",
      merchantCountry = "Norfolk Island",
      merchantName = "Farrell Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-23T19:47:23.141Z",
      amount = -14013.66,
      transactionProduct = "Chips",
      merchantCountry = "Dominican Republic",
      merchantName = "Stamm - Flatley",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-24T10:17:07.145Z",
      amount = -837.85,
      transactionProduct = "Hat",
      merchantCountry = "Guyana",
      merchantName = "Boyle, Harvey and Kemmer",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-24T16:23:21.237Z",
      amount = -17637.58,
      transactionProduct = "Car",
      merchantCountry = "Pitcairn Islands",
      merchantName = "Quitzon Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-25T00:24:44.226Z",
      amount = -26318.11,
      transactionProduct = "Ball",
      merchantCountry = "Madagascar",
      merchantName = "Ziemann Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-25T06:51:21.139Z",
      amount = -3192.41,
      transactionProduct = "Shirt",
      merchantCountry = "Bahrain",
      merchantName = "Wisoky, McCullough and Goldner",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-25T07:51:08.340Z",
      amount = -14788.61,
      transactionProduct = "Chicken",
      merchantCountry = "Cocos (Keeling) Islands",
      merchantName = "Hudson - Osinski",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-25T08:13:35.639Z",
      amount = -11327.49,
      transactionProduct = "Computer",
      merchantCountry = "Dominica",
      merchantName = "Jenkins, Keebler and Bayer",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-25T22:45:17.322Z",
      amount = -16353.09,
      transactionProduct = "Tuna",
      merchantCountry = "Marshall Islands",
      merchantName = "Crona, Rogahn and Weimann",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-26T01:19:40.144Z",
      amount = -12977.01,
      transactionProduct = "Pants",
      merchantCountry = "Niger",
      merchantName = "Bode, Hills and Zboncak",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-26T23:42:38.740Z",
      amount = -24622.96,
      transactionProduct = "Bacon",
      merchantCountry = "Uganda",
      merchantName = "Kautzer, Gleason and Homenick",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-11-27T05:24:32.509Z",
      amount = -22920.33,
      transactionProduct = "Ball",
      merchantCountry = "Niger",
      merchantName = "Morissette and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-27T05:29:44.531Z",
      amount = -10606.75,
      transactionProduct = "Chicken",
      merchantCountry = "Benin",
      merchantName = "Hauck, Pacocha and Fahey",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-27T08:07:03.038Z",
      amount = -24398.94,
      transactionProduct = "Tuna",
      merchantCountry = "Georgia",
      merchantName = "Legros, Kirlin and Reynolds",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-27T09:45:38.480Z",
      amount = -19512.39,
      transactionProduct = "Pizza",
      merchantCountry = "Cocos (Keeling) Islands",
      merchantName = "Hoppe, Thiel and Gottlieb",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-11-27T12:50:24.037Z",
      amount = -12423.28,
      transactionProduct = "Car",
      merchantCountry = "Ethiopia",
      merchantName = "Mraz, Barton and Herzog",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-11-27T18:06:26.562Z",
      amount = -18934.78,
      transactionProduct = "Bike",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Hilll and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-28T13:19:16.029Z",
      amount = -26278.01,
      transactionProduct = "Tuna",
      merchantCountry = "Cameroon",
      merchantName = "MacGyver - Sipes",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-28T14:48:43.211Z",
      amount = -2311.68,
      transactionProduct = "Tuna",
      merchantCountry = "Italy",
      merchantName = "Abshire - Beatty",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-29T02:28:27.139Z",
      amount = -7040.21,
      transactionProduct = "Towels",
      merchantCountry = "Armenia",
      merchantName = "Haley Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "EUR",
      time = "2022-11-30T05:15:31.973Z",
      amount = -15582.8,
      transactionProduct = "Ball",
      merchantCountry = "Saint Pierre and Miquelon",
      merchantName = "Senger Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-11-30T07:21:26.734Z",
      amount = -17607.3,
      transactionProduct = "Chips",
      merchantCountry = "Papua New Guinea",
      merchantName = "Mann Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-30T15:40:12.409Z",
      amount = -14965.13,
      transactionProduct = "Towels",
      merchantCountry = "Aruba",
      merchantName = "McLaughlin Inc",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-11-30T16:37:37.201Z",
      amount = -18857.19,
      transactionProduct = "Computer",
      merchantCountry = "Fiji",
      merchantName = "Boehm, Franecki and Skiles",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-01T06:43:26.817Z",
      amount = -15599.13,
      transactionProduct = "Mouse",
      merchantCountry = "New Zealand",
      merchantName = "Bins - Klein",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-02T07:48:34.758Z",
      amount = -1569.35,
      transactionProduct = "Bike",
      merchantCountry = "United States Minor Outlying Islands",
      merchantName = "Waters - Dooley",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-02T21:09:31.347Z",
      amount = -21670.49,
      transactionProduct = "Chicken",
      merchantCountry = "Sao Tome and Principe",
      merchantName = "Kuhn, McLaughlin and Kozey",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-03T00:59:27.090Z",
      amount = -8556.75,
      transactionProduct = "Bike",
      merchantCountry = "Ecuador",
      merchantName = "DuBuque Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-04T03:22:56.750Z",
      amount = -10649.14,
      transactionProduct = "Shirt",
      merchantCountry = "Guernsey",
      merchantName = "Grant, Beatty and Hilll",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-04T09:43:15.478Z",
      amount = -6443.39,
      transactionProduct = "Shirt",
      merchantCountry = "Egypt",
      merchantName = "Murazik LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-04T11:39:16.470Z",
      amount = -6319.53,
      transactionProduct = "Tuna",
      merchantCountry = "Comoros",
      merchantName = "Hickle, Russel and Feeney",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-04T16:11:33.725Z",
      amount = -20847.8,
      transactionProduct = "Shoes",
      merchantCountry = "Montenegro",
      merchantName = "Maggio and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-07T08:49:37.078Z",
      amount = -26249.57,
      transactionProduct = "Chips",
      merchantCountry = "Palestinian Territory",
      merchantName = "Ondricka - Ernser",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-07T14:40:42.941Z",
      amount = -11490.74,
      transactionProduct = "Soap",
      merchantCountry = "Denmark",
      merchantName = "Parisian, Ryan and Carroll",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-07T22:37:12.007Z",
      amount = -16726.44,
      transactionProduct = "Sausages",
      merchantCountry = "Belarus",
      merchantName = "O'Connell Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-08T17:06:43.131Z",
      amount = -17915.84,
      transactionProduct = "Ball",
      merchantCountry = "Cook Islands",
      merchantName = "Fadel - Walter",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-12-09T01:02:57.372Z",
      amount = -10053.06,
      transactionProduct = "Soap",
      merchantCountry = "Isle of Man",
      merchantName = "Casper - Considine",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-09T18:01:19.686Z",
      amount = -18262.85,
      transactionProduct = "Sausages",
      merchantCountry = "Guyana",
      merchantName = "Koch Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-09T23:38:44.542Z",
      amount = -20381.4,
      transactionProduct = "Chips",
      merchantCountry = "Northern Mariana Islands",
      merchantName = "McKenzie - Skiles",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-10T05:02:46.667Z",
      amount = -17862.03,
      transactionProduct = "Hat",
      merchantCountry = "Kenya",
      merchantName = "Howell Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-10T06:15:38.787Z",
      amount = -23285.52,
      transactionProduct = "Towels",
      merchantCountry = "Georgia",
      merchantName = "Dare Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-10T10:03:32.732Z",
      amount = -9144.68,
      transactionProduct = "Ball",
      merchantCountry = "Macao",
      merchantName = "Douglas - Kovacek",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-10T19:41:55.526Z",
      amount = -18811.36,
      transactionProduct = "Bike",
      merchantCountry = "Haiti",
      merchantName = "Gutkowski, Schimmel and Kreiger",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-12-10T20:30:10.149Z",
      amount = -29905.37,
      transactionProduct = "Chips",
      merchantCountry = "Guadeloupe",
      merchantName = "Macejkovic - Lind",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-12T01:54:25.412Z",
      amount = -870.03,
      transactionProduct = "Chicken",
      merchantCountry = "Vietnam",
      merchantName = "Wehner LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-12T03:06:00.736Z",
      amount = -4772.14,
      transactionProduct = "Shirt",
      merchantCountry = "Russian Federation",
      merchantName = "Schuster, Cruickshank and Feest",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      transactionProduct = "Pay",
      merchantCountry = "Norway",
      merchantName = "Systek AS",
      time = "2022-12-12T11:00:00.000Z",
      amount = 38000,
      transactionType = "salary"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-12T12:56:13.555Z",
      amount = -8958.34,
      transactionProduct = "Computer",
      merchantCountry = "Tunisia",
      merchantName = "Konopelski, Schoen and Kshlerin",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-13T01:20:48.439Z",
      amount = -20296.85,
      transactionProduct = "Car",
      merchantCountry = "Peru",
      merchantName = "McKenzie - Crona",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-13T08:21:36.573Z",
      amount = -27865.78,
      transactionProduct = "Sausages",
      merchantCountry = "Fiji",
      merchantName = "Herzog, McCullough and Spencer",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-15T17:15:45.005Z",
      amount = -14861.41,
      transactionProduct = "Table",
      merchantCountry = "Netherlands",
      merchantName = "Bahringer LLC",
      transactionType = "payment"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-15T18:17:24.584Z",
      amount = -23433.51,
      transactionProduct = "Salad",
      merchantCountry = "Tajikistan",
      merchantName = "Lang - Orn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-16T04:42:32.774Z",
      amount = -20643.52,
      transactionProduct = "Pizza",
      merchantCountry = "United Kingdom",
      merchantName = "Mills Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-16T13:25:49.433Z",
      amount = -182.57,
      transactionProduct = "Chips",
      merchantCountry = "Hungary",
      merchantName = "Cole Group",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-16T17:39:11.934Z",
      amount = -22980.42,
      transactionProduct = "Chair",
      merchantCountry = "Guadeloupe",
      merchantName = "Hoeger - Cruickshank",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-16T18:37:51.900Z",
      amount = -4656.08,
      transactionProduct = "Chair",
      merchantCountry = "Anguilla",
      merchantName = "Champlin - Sauer",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-17T09:31:51.072Z",
      amount = -6061.78,
      transactionProduct = "Pants",
      merchantCountry = "Saint Vincent and the Grenadines",
      merchantName = "Feil - Christiansen",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-18T05:59:20.918Z",
      amount = -9396.15,
      transactionProduct = "Bacon",
      merchantCountry = "Brazil",
      merchantName = "Christiansen - Hudson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-18T16:01:29.422Z",
      amount = -10211.32,
      transactionProduct = "Shirt",
      merchantCountry = "Falkland Islands (Malvinas)",
      merchantName = "Blanda, Hessel and Baumbach",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-19T12:24:05.161Z",
      amount = -13044.51,
      transactionProduct = "Ball",
      merchantCountry = "Guyana",
      merchantName = "Walsh, Abernathy and Ullrich",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-19T14:48:27.906Z",
      amount = -12280.21,
      transactionProduct = "Tuna",
      merchantCountry = "Latvia",
      merchantName = "Becker, Feil and Veum",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-19T22:59:40.729Z",
      amount = -22784.56,
      transactionProduct = "Sausages",
      merchantCountry = "Oman",
      merchantName = "Abernathy - Dickinson",
      transactionType = "invoice"
    },
    Transaction {
      currency = "EUR",
      time = "2022-12-20T01:33:19.789Z",
      amount = -4081.71,
      transactionProduct = "Chips",
      merchantCountry = "Martinique",
      merchantName = "Dietrich, Halvorson and Bogan",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-20T10:00:28.215Z",
      amount = -4340.7,
      transactionProduct = "Gloves",
      merchantCountry = "Saint Lucia",
      merchantName = "Schumm, Grady and Conn",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-21T19:39:53.467Z",
      amount = -14506.91,
      transactionProduct = "Tuna",
      merchantCountry = "Chile",
      merchantName = "Fritsch Group",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-22T03:49:30.036Z",
      amount = -25189.05,
      transactionProduct = "Keyboard",
      merchantCountry = "Gambia",
      merchantName = "Schmidt Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-22T11:20:14.180Z",
      amount = -14363.74,
      transactionProduct = "Computer",
      merchantCountry = "Brunei Darussalam",
      merchantName = "Schiller LLC",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-22T12:59:42.885Z",
      amount = -28249.22,
      transactionProduct = "Ball",
      merchantCountry = "Lithuania",
      merchantName = "Lebsack, Gorczany and Treutel",
      transactionType = "invoice"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-22T14:19:22.516Z",
      amount = -28812.45,
      transactionProduct = "Pants",
      merchantCountry = "Seychelles",
      merchantName = "Welch LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "EUR",
      time = "2022-12-22T22:09:20.349Z",
      amount = -22231.96,
      transactionProduct = "Gloves",
      merchantCountry = "Chile",
      merchantName = "Bayer, Wisozk and Toy",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-23T16:28:31.123Z",
      amount = -16286.17,
      transactionProduct = "Mouse",
      merchantCountry = "Northern Mariana Islands",
      merchantName = "Ratke, Wintheiser and Dickens",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-23T17:39:26.180Z",
      amount = -8055.29,
      transactionProduct = "Chicken",
      merchantCountry = "Bangladesh",
      merchantName = "Steuber and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-23T17:47:18.857Z",
      amount = -29382.11,
      transactionProduct = "Pizza",
      merchantCountry = "Belarus",
      merchantName = "O'Connell Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-23T18:43:45.129Z",
      amount = -10663.74,
      transactionProduct = "Shoes",
      merchantCountry = "Tuvalu",
      merchantName = "Schmeler Group",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-24T02:18:52.797Z",
      amount = -7327.97,
      transactionProduct = "Hat",
      merchantCountry = "Aruba",
      merchantName = "Towne, Padberg and Heathcote",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-24T06:16:19.387Z",
      amount = -14797.47,
      transactionProduct = "Tuna",
      merchantCountry = "Papua New Guinea",
      merchantName = "Carroll, Runolfsdottir and Davis",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-24T08:15:18.560Z",
      amount = -2449.51,
      transactionProduct = "Cheese",
      merchantCountry = "Cook Islands",
      merchantName = "Stoltenberg, Schmidt and Yost",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-25T07:37:22.050Z",
      amount = -22656.98,
      transactionProduct = "Salad",
      merchantCountry = "Guyana",
      merchantName = "Trantow - Halvorson",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-25T15:10:01.757Z",
      amount = -10244.24,
      transactionProduct = "Bacon",
      merchantCountry = "Ghana",
      merchantName = "Kub, Roberts and Padberg",
      transactionType = "payment"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-25T20:24:17.609Z",
      amount = -22263.8,
      transactionProduct = "Pizza",
      merchantCountry = "Holy See (Vatican City State)",
      merchantName = "Quigley, Stracke and Corwin",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-26T14:31:11.110Z",
      amount = -14446.74,
      transactionProduct = "Pizza",
      merchantCountry = "Haiti",
      merchantName = "Metz, Spencer and Ratke",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-26T16:50:30.710Z",
      amount = -28073.45,
      transactionProduct = "Shoes",
      merchantCountry = "Benin",
      merchantName = "Hoppe Inc",
      transactionType = "invoice"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-26T17:44:19.118Z",
      amount = -25428.82,
      transactionProduct = "Chips",
      merchantCountry = "Pakistan",
      merchantName = "Leannon and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-27T03:59:59.135Z",
      amount = -15031.58,
      transactionProduct = "Soap",
      merchantCountry = "Kiribati",
      merchantName = "Ward and Sons",
      transactionType = "invoice"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-27T11:01:49.130Z",
      amount = -16615.38,
      transactionProduct = "Mouse",
      merchantCountry = "Sudan",
      merchantName = "Runolfsdottir - Block",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-27T22:57:40.373Z",
      amount = -23807.76,
      transactionProduct = "Ball",
      merchantCountry = "United Arab Emirates",
      merchantName = "Dare, Hartmann and Senger",
      transactionType = "invoice"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-28T09:15:13.891Z",
      amount = -4017.29,
      transactionProduct = "Keyboard",
      merchantCountry = "Kenya",
      merchantName = "Rath - Cummings",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-28T14:35:08.140Z",
      amount = -20319.2,
      transactionProduct = "Hat",
      merchantCountry = "Rwanda",
      merchantName = "O'Reilly, Torphy and Stroman",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-28T16:19:26.222Z",
      amount = -24535.18,
      transactionProduct = "Shoes",
      merchantCountry = "Jamaica",
      merchantName = "Halvorson and Sons",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-28T17:54:55.465Z",
      amount = -10452.92,
      transactionProduct = "Ball",
      merchantCountry = "Mauritania",
      merchantName = "Fadel LLC",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-29T02:40:36.867Z",
      amount = -2355.04,
      transactionProduct = "Shirt",
      merchantCountry = "Suriname",
      merchantName = "Farrell Inc",
      transactionType = "payment"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-29T02:46:59.993Z",
      amount = -26404.09,
      transactionProduct = "Shoes",
      merchantCountry = "Saint Kitts and Nevis",
      merchantName = "Volkman - Maggio",
      transactionType = "deposit"
    },
    Transaction {
      currency = "EUR",
      time = "2022-12-29T03:30:11.266Z",
      amount = -23314.67,
      transactionProduct = "Gloves",
      merchantCountry = "Rwanda",
      merchantName = "Schimmel - Windler",
      transactionType = "deposit"
    },
    Transaction {
      currency = "GBP",
      time = "2022-12-29T15:55:56.925Z",
      amount = -3623.35,
      transactionProduct = "Salad",
      merchantCountry = "French Polynesia",
      merchantName = "Gerhold Inc",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "SEK",
      time = "2022-12-29T23:08:24.194Z",
      amount = -20854.25,
      transactionProduct = "Chair",
      merchantCountry = "Norfolk Island",
      merchantName = "Dickinson Group",
      transactionType = "payment"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-30T17:23:39.096Z",
      amount = -28728.69,
      transactionProduct = "Car",
      merchantCountry = "Marshall Islands",
      merchantName = "Smitham, Ledner and Borer",
      transactionType = "deposit"
    },
    Transaction {
      currency = "USD",
      time = "2022-12-30T21:32:24.761Z",
      amount = -8484.41,
      transactionProduct = "Shoes",
      merchantCountry = "Eritrea",
      merchantName = "Franecki, Padberg and Krajcik",
      transactionType = "deposit"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-30T23:46:45.608Z",
      amount = -19911.82,
      transactionProduct = "Salad",
      merchantCountry = "Paraguay",
      merchantName = "Waters, Kovacek and Leffler",
      transactionType = "withdrawal"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-31T02:09:23.633Z",
      amount = -28759.3,
      transactionProduct = "Sausages",
      merchantCountry = "Argentina",
      merchantName = "Purdy - Dibbert",
      transactionType = "deposit"
    },
    Transaction {
      currency = "DKK",
      time = "2022-12-31T11:26:25.425Z",
      amount = -23125.95,
      transactionProduct = "Computer",
      merchantCountry = "Benin",
      merchantName = "Spinka and Sons",
      transactionType = "payment"
    },
    Transaction {
      currency = "NOK",
      time = "2022-12-31T23:27:55.181Z",
      amount = -28394.22,
      transactionProduct = "Shoes",
      merchantCountry = "Algeria",
      merchantName = "Hand Group",
      transactionType = "invoice"
    } ]
