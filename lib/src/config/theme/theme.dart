import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  fontFamily: 'montserratAlternates',
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    bodySmall: GoogleFonts.montserratAlternates(
      color: const Color(0xFFFFFFFF),
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 13.sp,
    ),
    displayLarge: GoogleFonts.montserratAlternates(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 28.sp,
    ),
    displayMedium: GoogleFonts.montserratAlternates(
      color: const Color(0xFF0E0E0D),
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 22.sp,
    ),
    bodyMedium: GoogleFonts.montserratAlternates(
      color: const Color(0xFF0E0E0D),
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 16.sp,
    ),
    bodyLarge: GoogleFonts.montserratAlternates(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryColor: const Color(0XFF4BB299),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
      side: const BorderSide(
        color: Color(0xFF373737),
      ),
    ),
    buttonColor: const Color(0xFF373737),
    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
    textTheme: ButtonTextTheme.primary,
    disabledColor: Colors.grey,
  ),
  scaffoldBackgroundColor: const Color(0xFFE0E2E6),
  canvasColor: const Color(0xFFE0E2E6),
  iconTheme: const IconThemeData(color: Colors.black),
  primaryIconTheme: const IconThemeData(color: Colors.black),
  cardTheme: CardTheme(
    margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
      side: BorderSide(color: const Color(0xFF373737), width: 1.sp),
    ),
    elevation: 0,
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
      side: BorderSide(color: const Color(0xFF373737), width: 1.sp),
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Color(0xFF373737)),
    actionsIconTheme: const IconThemeData(color: Colors.black),
    centerTitle: true,
    titleTextStyle: GoogleFonts.montserratAlternates(
      color: const Color(0xFF373737),
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
    hintStyle: const TextStyle(
      color: Colors.white,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      height: 1.6,
    ),
    errorStyle: const TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      height: 1.6,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: Color(0xFF7C2946),
      ),
    ),
    focusColor: const Color(0xFF7C2946),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: Colors.white,
        width: 2,
      ),
    ),
  ),
  // colorScheme: theme.colorScheme.copyWith(
  //   background: const Color(0xFFF5F5F5),
  // ),
);
