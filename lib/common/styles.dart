import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Color(0xFFFFFFFF);
final Color secondaryColor = Color(0xFF6B38FB);

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.merriweather(
      fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.merriweather(
      fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3:
      GoogleFonts.merriweather(fontSize: 46, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.merriweather(
      fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5:
      GoogleFonts.merriweather(fontSize: 23, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.merriweather(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.merriweather(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.merriweather(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.libreFranklin(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.libreFranklin(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.libreFranklin(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.libreFranklin(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.libreFranklin(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

// Source : https://dev.to/rohanjsh/custom-swatch-for-material-app-theme-primaryswatch-3kic
class Pallete {
  static const MaterialColor kToDark = const MaterialColor(
    0xffe55f48,
    const <int, Color>{
      50: const Color(0xffce5641), //10%
      100: const Color(0xffb74c3a), //20%
      200: const Color(0xffa04332), //30%
      300: const Color(0xff89392b), //40%
      400: const Color(0xff733024), //50%
      500: const Color(0xff5c261d), //60%
      600: const Color(0xff451c16), //70%
      700: const Color(0xff2e130e), //80%
      800: const Color(0xff170907), //90%
      900: const Color(0xff000000), //100%
    },
  );
}

ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Pallete.kToDark)
      .copyWith(secondary: secondaryColor),
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: myTextTheme.apply(bodyColor: Colors.black),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: primaryColor,
    foregroundColor: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: secondaryColor,
      textStyle: TextStyle(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: secondaryColor,
    unselectedItemColor: Colors.grey,
  ),
);

final Color darkPrimaryColor = Color(0xFF000000);
final Color darkSecondaryColor = Color(0xff64ffda);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: darkPrimaryColor,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Pallete.kToDark)
      .copyWith(secondary: darkSecondaryColor),
  scaffoldBackgroundColor: Colors.black,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: myTextTheme.apply(bodyColor: Colors.white),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: darkPrimaryColor,
    foregroundColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: darkSecondaryColor,
      textStyle: TextStyle(
        color: Colors.black,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: darkSecondaryColor,
    unselectedItemColor: Colors.grey,
  ),
);
