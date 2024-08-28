import 'package:flutter/material.dart';
import '../constant.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({
    required this.flagNum,
    required this.countryName,
    required this.goldRate,
    required this.currencyName,
  });

  final int flagNum;
  final String countryName;
  final String goldRate;
  final String currencyName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFC9713), Color(0xFFFE7C13)],
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/flag$flagNum.png'),
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$countryName', style: kCardLargeTextStyle()),
              Text('$currencyName', style: kCardBodyTextStyle()),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('$goldRate', style: kCardLargeTextStyle()),
            ],
          ),
        ],
      ),
    );
  }
}
