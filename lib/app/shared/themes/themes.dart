import 'package:curious_ifsp/app/shared/themes/color_schemes.g.dart';
import 'package:flutter/material.dart';

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      drawerTheme: DrawerThemeData(
        backgroundColor: darkColorScheme.onPrimary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: darkColorScheme.onPrimaryContainer,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: darkColorScheme.shadow),
      ),
    );

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      drawerTheme: DrawerThemeData(backgroundColor: lightColorScheme.onPrimary),
      appBarTheme: AppBarTheme(
        backgroundColor: lightColorScheme.onPrimaryContainer,
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: darkColorScheme.shadow),
      ),
    );
