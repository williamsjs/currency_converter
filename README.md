#Currency Converter
<p>This Program takes in a specific amount and type of currency and can store them as a Currency object.</p>
<p>It also contains a CurrencyConverter class that accepts an array of hashes that contain a key of currency type and a value of currency rates compared against each other<p>
<p>A CurrencyTrader object was added that can accept an array of CurrencyConverter objects and a single Currency object.  The CurrencyTrader class accepts the Currency object and iterates over each CurrencyConverter object, then returning an array of best calculated options determined by the CurrencyConverter object.</p>
