import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const black = Colors.black;
  static const grey = Colors.grey;
  static const white = Colors.white;
  static const lightPurple = Color(0xFF848dd5);
  static const lightGrey = Color.fromARGB(255, 223, 222, 225);
  static const primaryColor = Color(0xFFEC7E81);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: _textTheme(),
      shadowColor: AppColors.grey,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      cardTheme: const CardTheme(color: AppColors.white),
      iconTheme: const IconThemeData(color: AppColors.black),
      colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
        foregroundColor: Colors.black,
        // backgroundColor: AppColors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: AppColors.primaryColor,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle:
            GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w500),
        labelColor: AppColors.white,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.2),
                spreadRadius: 4,
                blurRadius: 5,
              ),
            ],
            color: AppColors.primaryColor),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        textColor: AppColors.black,
        childrenPadding: EdgeInsets.fromLTRB(20, 4, 10, 8),
      ),
    );
  }

  static ThemeData chatInputDecoration(BuildContext context) {
    final currentTheme = Theme.of(context);
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(22),
      borderSide: currentTheme.inputDecorationTheme.border!.borderSide,
    );
    return currentTheme.copyWith(
      inputDecorationTheme: currentTheme.inputDecorationTheme.copyWith(
        constraints: const BoxConstraints.tightFor(height: 40),
        enabledBorder: border,
        focusedBorder: border,
        border: border,
      ),
    );
  }

  static TextTheme _textTheme() {
    return TextTheme(
      headline1: GoogleFonts.poppins(
        fontSize: 93,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 58,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: GoogleFonts.poppins(
        fontSize: 46,
        fontWeight: FontWeight.w400,
      ),
      headline4: GoogleFonts.poppins(
        fontSize: 33,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        decoration: TextDecoration.underline,
      ),
      headline6: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    );
  }
}
// popupMenuTheme: PopupMenuThemeData(
//         elevation: 4,
//         color: AppColors.grey[100],
//         textStyle: GoogleFonts.poppins(color: AppColors.grey),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//           side: const BorderSide(width: .6, color: AppColors.grey),
//         ),
//       ),
//       outlinedButtonTheme: OutlinedButtonThemeData(
//         style: OutlinedButton.styleFrom(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           side: const BorderSide(color: AppColors.primaryColor, width: .8),
//           minimumSize: const Size(120, 44),
//           primary: Colors.grey.shade700,
//         ),
//       ),
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           minimumSize: const Size(120, 40),
//           primary: AppColors.primaryColor,
//         ),
//       ),
//       inputDecorationTheme: InputDecorationTheme(
//         contentPadding: const EdgeInsets.symmetric(horizontal: 12),
//         disabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(width: .8, color: AppColors.lightGrey),
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(width: .8, color: AppColors.lightGrey),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(width: .8, color: AppColors.lightGrey),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(
//             width: .8,
//             color: AppColors.primaryColor,
//           ),
//         ),
//       ),