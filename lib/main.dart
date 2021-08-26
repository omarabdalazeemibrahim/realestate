import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/screens/homescreen.dart';
import 'package:realstateapp/widgets/main/main_section.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.white
        ).copyWith(
          bodyText1: TextStyle(color: kBodyTextColor),bodyText2: TextStyle(color: kBodyTextColor),

        ),

      ),
      home: MainSection(),
    );
  }
}
