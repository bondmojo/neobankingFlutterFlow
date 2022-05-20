// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? DarkModeTheme()
          : LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color primaryBtnText;
  Color lineColor;
  Color textWhite;
  Color bodyText;
  Color errorText;
  Color successText;

  TextStyle get title1 => TextStyle(
        fontFamily: 'Noto Sans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 21,
      );
  TextStyle get title2 => TextStyle(
        fontFamily: 'Noto Sans',
        color: alternate,
        fontWeight: FontWeight.w600,
        fontSize: 21,
      );
  TextStyle get title3 => TextStyle(
        fontFamily: 'Noto Sans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 21,
      );
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Noto Sans',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 17,
      );
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Noto Sans',
        color: textWhite,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      );
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Noto Sans',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 13,
      );
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Noto Sans',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 15,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF332D6B);
  Color secondaryColor = const Color(0xFFCE9221);
  Color tertiaryColor = const Color(0xFF15182A);
  Color alternate = const Color(0xFFCE9221);
  Color primaryBackground = const Color(0xFFFFFFFF);
  Color secondaryBackground = const Color(0xFFEDF0F1);
  Color primaryText = const Color(0xFF02020D);
  Color secondaryText = const Color(0xFF3F3F49);

  Color primaryBtnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFFE0E3E7);
  Color textWhite = Color(0xFFFFFFFF);
  Color bodyText = Color(0xFF7F7F85);
  Color errorText = Color(0xFFF03831);
  Color successText = Color(0xFF24D4AA);
}

class DarkModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0x00000000);
  Color secondaryColor = const Color(0x00000000);
  Color tertiaryColor = const Color(0x00000000);
  Color alternate = const Color(0x00000000);
  Color primaryBackground = const Color(0x00000000);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0x00000000);
  Color secondaryText = const Color(0x00000000);

  Color primaryBtnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFF22282F);
  Color textWhite = Color(0xFF41B52D);
  Color bodyText = Color(0xFFD5F0D9);
  Color errorText = Color(0xFF7AC11C);
  Color successText = Color(0xFF924766);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
