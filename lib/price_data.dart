import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> countryName = [
  'India',
  'US',
  'Cambodia',
  'Philippine',
  'Russian'
];
const List<String> currenciesName = [
  'INR ₹',
  'USD \$',
  'KHR ៛',
  'PHP ₱',
  'RUB ₽'
];
const List<String> currencies = ['INR', 'USD', 'KHR', 'PHP', 'RUB'];
const List<int> flagNumbers = [1, 2, 3, 4, 5];
const url = 'https://api.metalpriceapi.com/v1/latest';
const apiKey = 'b1c4213c57ff0e74d73c18fc6c080291';

class PriceData {
  Future getMetalData(String metal) async {
    Map<String, String> Prices = {};
    for (String gold in currencies) {
      String requestURL = '$url?api_key=$apiKey&base=$gold&currencies=$metal';
      http.Response response = await http.get(Uri.parse(requestURL));
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double goldPrice = decodedData['rates']['${gold}$metal'];
        Prices[gold] = goldPrice.toStringAsFixed(2);
      } else {
        print('Failed to load data: ${response.statusCode}');
      }
    }
    return Prices;
  }
}
