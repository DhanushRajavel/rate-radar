import 'package:flutter/material.dart';
import 'package:rate_radar/constant.dart';
import 'package:rate_radar/silver_price_screen.dart';
import 'package:rate_radar/gold_price_screen.dart';

class BottomNavBar extends StatefulWidget {
  final int index;

  const BottomNavBar({Key? key, required this.index}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  @override
  void initState() {
    super.initState();
    index = widget.index;
  }

  void onTap(int currentIndex) {
    setState(() {
      index = currentIndex;
    });

    if (currentIndex == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SilverPriceScreen()),
      );
    } else if (currentIndex == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GoldPriceScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      iconSize: 30,
      selectedLabelStyle: kBottomNavBarTextStyle(),
      selectedItemColor: Color(0xFFFC9713),
      selectedIconTheme: IconThemeData(color: Color(0xFFFC9713)),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Gold',
          backgroundColor: Color(0xFF161445),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.severe_cold),
          label: 'Silver',
          backgroundColor: Color(0xFF161445),
        ),
      ],
      onTap: onTap,
    );
  }
}
