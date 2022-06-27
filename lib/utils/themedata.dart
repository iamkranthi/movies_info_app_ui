import 'package:flutter/material.dart';
import 'package:movies_info_app_ui/utils/exports.dart';

class Mytheme {
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: GlobalColors.backgroundColor,
        colorScheme: const ColorScheme.dark(
          primary: GlobalColors.darkColor,
        ),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
