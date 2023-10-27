
import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFFF6961),
  onPrimary: Color(0xFFFFF0EF),
  primaryContainer: Color(0xFFFFE1DF),
  onPrimaryContainer: Color(0xFF331513),
  secondary: Color(0xFF00BDCB),
  onSecondary: Color(0xFFE6F8FA),
  secondaryContainer: Color(0xFFCCF2F5),
  onSecondaryContainer: Color(0xFF002629),
  tertiary: Color(0xFF857371),
  onTertiary: Color(0xFFF3F1F1),
  tertiaryContainer: Color(0xFFE7E3E3),
  onTertiaryContainer: Color(0xFF1B1717),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFF8E8E8),
  errorContainer: Color(0xFFF1D1D1),
  onErrorContainer: Color(0xFF250505),
  outline: Color(0xFF616A6B),
  background: Color(0xFFF2F2F2),
  onBackground: Color(0xFF1A1A1A),
  surface: Color(0xFFE6E6E6),
  onSurface: Color(0xFF333333),
  surfaceVariant: Color(0xFFC9CECF),
  onSurfaceVariant: Color(0xFF303536),
  // inverseSurface: Color(0xFF313033),
  // onInverseSurface: Color(0xFFF4EFF4),
  // inversePrimary: Color(0xFFD0BCFF),
  // shadow: Color(0xFF000000),
  // surfaceTint: Color(0xFF6750A4),
  // outlineVariant: Color(0xFFCAC4D0),
  // scrim: Color(0xFF000000),
);

class SysColor {
  static const primary = RefColor.darkPink;
  static const onPrimary = Color(0xFFFFF0EF);
  static const primaryContainer = Color(0xFFFFE1DF);
  static const onPrimaryContainer = Color(0xFF331513);
  static const secondary = RefColor.darkBlue;
  static const onSecondary = Color(0xFFE6F8FA);
  static const secondaryContainer = Color(0xFFCCF2F5);
  static const onSecondaryContainer = Color(0xFF002629);
  static const tertiary = Color(0xFF857371);
  static const onTertiary = Color(0xFFF3F1F1);
  static const tertiaryContainer = Color(0xFFE7E3E3);
  static const onTertiaryContainer = Color(0xFF1B1717);
  static const error = Color(0xFFBA1A1A);
  static const onError = Color(0xFFF8E8E8);
  static const errorContainer = Color(0xFFF1D1D1);
  static const onErrorContainer = Color(0xFF250505);
  static const outline = Color(0xFF616A6B);
  static const background = Color(0xFFF2F2F2);
  static const onBackground = Color(0xFF1A1A1A);
  static const surface = Color(0xFFE6E6E6);
  static const onSurface = Color(0xFF333333);
  static const surfaceVariant = Color(0xFFC9CECF);
  static const onSurfaceVariant = Color(0xFF303536);
}

class RefColor {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const pastelPink = Color(0xFFF38181);
  static const pastelYellow = Color(0xFFFFCF96);
  static const pastelLime = Color(0xFFF6FDC3);
  static const pastelBlue = Color(0xFFCDFAD5);
  static const darkPink = Color(0xFFFF6D60);
  static const darkYellow = Color(0xFFF7D060);
  static const darkerYellow = Color(0xFF624D27);
  static const darkLime = Color(0xFFE6FF3F);
  static const darkBlue = Color(0xFF98D8AA);
  static const darkerBlue = Color(0xFF3A5243);

  static const neutralVariant100 = Color(0xFFF2F3F3);
  static const neutralVariant200 = Color(0xFFE4E7E7);
  static const neutralVariant300 = Color(0xFFC9CECF);
  static const neutralVariant400 = Color(0xFFAFB6B6);
  static const neutralVariant500 = Color(0xFF949D9E);
  static const neutralVariant600 = Color(0xFF798586);
  static const neutralVariant700 = Color(0xFF616A6B);
  static const neutralVariant800 = Color(0xFF495050);
  static const neutralVariant900 = Color(0xFF303536);
  static const neutralVariant1000 = Color(0xFF181B1B);

  static const error100 = Color(0xFFF8E8E8);
  static const error200 = Color(0xFFF1D1D1);
  static const error300 = Color(0xFFE3A3A3);
  static const error400 = Color(0xFFD67676);
  static const error500 = Color(0xFFC84848);
  static const error600 = Color(0xFFBA1A1A);
  static const error700 = Color(0xFF951515);
  static const error800 = Color(0xFF701010);
  static const error900 = Color(0xFF4A0A0A);
  static const error1000 = Color(0xFF250505);
}