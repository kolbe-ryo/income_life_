// Project imports:
import '../data/model/gsheets_model.dart';
import '../enum/currency_value.dart';

const double kPadding = 16;

const double kBorder = 10;

const double kFontSize = 16;

const double kCardHeight = 64;

const String aboutAppUrl = 'https://kolbe-app.site/';

const String yahooFinanceUrl = 'https://finance.yahoo.com/';

const String fgiApiKeyCaption = 'X-RapidAPI-Key';

const String fgiHostCaption = 'X-RapidAPI-Host';

const String fgiHostValue = 'fear-and-greed-index.p.rapidapi.com';

const testModels = [
  GsheetsModel(
    market: CurrencyValue.usd,
    ticker: 'TSLA',
    name: 'Tesla',
    price: 130.59,
    dividend: 0.0012,
    totalStocks: 20,
    exchangeRate: 141,
    isAddedPortfolio: false,
  ),
  GsheetsModel(
    market: CurrencyValue.jpy,
    ticker: '4092T',
    name: '三菱重工',
    price: 4023,
    dividend: 0.024,
    totalStocks: 100,
    exchangeRate: 141,
    isAddedPortfolio: false,
  ),
  GsheetsModel(
    market: CurrencyValue.usd,
    ticker: 'ARCC',
    name: 'AresCapitalCorp',
    price: 19.09,
    dividend: 0.105,
    totalStocks: 100,
    exchangeRate: 141,
    isAddedPortfolio: false,
  ),
  GsheetsModel(
    market: CurrencyValue.usd,
    ticker: 'SPYD',
    name: 'HighDvidendIndex',
    price: 40.3,
    dividend: 0.0345,
    totalStocks: 15,
    exchangeRate: 141,
    isAddedPortfolio: false,
  ),
  GsheetsModel(
    market: CurrencyValue.usd,
    ticker: 'CRWD',
    name: 'CrowdStrike',
    price: 120.43,
    dividend: 0.13,
    totalStocks: 10,
    exchangeRate: 141,
    isAddedPortfolio: false,
  ),
  GsheetsModel(
    market: CurrencyValue.usd,
    ticker: 'GOOG',
    name: 'Google',
    price: 100.21,
    dividend: 0.0023,
    totalStocks: 10,
    exchangeRate: 141,
    isAddedPortfolio: false,
  ),
  GsheetsModel(
    market: CurrencyValue.usd,
    ticker: 'AMZN',
    name: 'Amazon',
    price: 99.80,
    dividend: 0.053,
    totalStocks: 20,
    exchangeRate: 141,
    isAddedPortfolio: false,
  ),
];
