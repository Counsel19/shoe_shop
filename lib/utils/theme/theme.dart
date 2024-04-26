import 'package:flutter/material.dart';
import 'package:shop_shoes/utils/theme/custom_themes/appbar_theme.dart';
import 'package:shop_shoes/utils/theme/custom_themes/buttom_sheet_theme.dart';
import 'package:shop_shoes/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shop_shoes/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:shop_shoes/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:shop_shoes/utils/theme/custom_themes/text_field_theme.dart';
import 'package:shop_shoes/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.light,
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: AppbarTheme.lightAppbarTheme,
      checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: AppOutlinedButton.lightOutlinedButton,
      inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme);

  static ThemeData dartTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: AppbarTheme.dartAppbarTheme,
      checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: AppOutlinedButton.darkOutlinedButton,
      inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme);
}
