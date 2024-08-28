import 'package:flutter/material.dart';
import 'components/bottom_nav_bar.dart';
import 'constant.dart';
import 'package:intl/intl.dart';
import 'price_data.dart';
import 'components/resuable_card.dart';

class SilverPriceScreen extends StatefulWidget {
  const SilverPriceScreen({super.key});

  @override
  State<SilverPriceScreen> createState() => _SilverPriceScreenState();
}

class _SilverPriceScreenState extends State<SilverPriceScreen> {
  String formattedDate = '';
  int index = 0;
  Column makeCard() {
    List<Widget> reusableCards = [];

    // Loop through the countries and create cards
    for (int i = 0; i < countryName.length; i++) {
      reusableCards.add(
        ResuableCard(
          flagNum: flagNumbers[i],
          countryName: countryName[i],
          goldRate: silverValue[currencies[i]] ??
              'N/A', // Use modulo to cycle through currencies
          currencyName: currenciesName[i], // Match currency name to country
        ),
      );
      if (i < countryName.length - 1) {
        reusableCards.add(SizedBox(height: 16)); // Adds 10 pixels of space
      }
    }

    return Column(
      children: reusableCards,
    );
  }

  @override
  void initState() {
    super.initState();
    DateTime todayDate = DateTime.now();
    formattedDate = DateFormat('MM-dd-yyyy').format(todayDate);
    getPrice();
  }

  void getPrice() async {
    try {
      var data = await PriceData().getMetalData('XAG');
      setState(() {
        silverValue = data!;
      });
    } catch (e) {
      print(e);
    }
  }

  Map<String, dynamic> silverValue = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Silver Price Tracker',
                  style: kAppBarTitleTextStyle(),
                ),
                Text(
                  'Last Updated Date: $formattedDate',
                  style: kAppBarBodyTextStyle(),
                ),
              ],
            ),
            flexibleSpace: Stack(
              children: [
                Image(
                  image: AssetImage('images/appBar.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              makeCard(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(index: 1));
  }
}
