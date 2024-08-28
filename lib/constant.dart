import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kAppBarBodyTextStyle(){
  return GoogleFonts.raleway(
    textStyle: TextStyle(
      fontSize: 18,
      color: Color(0xFFFFFFFF),
    )
  );
}
TextStyle kAppBarTitleTextStyle(){
  return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontSize: 25,
        color: Color(0xFFD3CECE),
        fontWeight: FontWeight.w700
      )
  );
}
TextStyle kCardLargeTextStyle(){
  return GoogleFonts.raleway(
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.white
    )
  );
}
SizedBox kCardSize(){
  return SizedBox(
    height: 16,
  );
}
TextStyle kCardBodyTextStyle(){
  return GoogleFonts.raleway(
    textStyle: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.white
    )
  );
}
TextStyle kBottomNavBarTextStyle(){
  return GoogleFonts.raleway(
      textStyle: TextStyle(
      fontSize: 15,
  )
  );

}