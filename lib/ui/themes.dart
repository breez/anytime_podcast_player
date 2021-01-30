// Copyright 2020-2021 Ben Hills. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

final ThemeData _lightTheme = _buildLightTheme();
final ThemeData _darkTheme = _buildDarktheme();

ThemeData _buildLightTheme() {
  final base = ThemeData.light();

  return base.copyWith(
    brightness: Brightness.light,
    primaryColor: Color(0xffffffff),
    primaryColorBrightness: Brightness.light,
    primaryColorLight: Color.fromRGBO(0, 133, 251, 1.0),
    primaryColorDark: Color.fromRGBO(19, 85, 191, 1.0),
    accentColor: Color.fromRGBO(5, 93, 235, 0.7),
    accentColorBrightness: Brightness.light,
    canvasColor: Color(0xfffafafa),
    scaffoldBackgroundColor: Color(0xffffffff),
    bottomAppBarColor: Color(0xff4D88EC),
    cardColor: Color(0xffffffff),
    dividerColor: Color.fromRGBO(0, 0, 0, 0.12),
    highlightColor: Color.fromRGBO(0, 117, 255, 1.0),
    splashColor: Color(0x66c8c8c8),
    selectedRowColor: Color(0xfff5f5f5),
    unselectedWidgetColor: Colors.white,
    disabledColor: Color(0x61000000),
    buttonColor: Color(0xFF4B89EB),
    toggleableActiveColor: Color.fromRGBO(0, 133, 251, 1.0),
    secondaryHeaderColor: Color(0xfffff3e0),
    textSelectionColor: Color(0xffffcc80),
    cursorColor: Colors.blue,
    textSelectionHandleColor: Color(0xffffb74d),
    backgroundColor: Colors.white,
    dialogBackgroundColor: Color(0xffffffff),
    indicatorColor: Colors.grey[800],
    hintColor: Color(0x8a000000),
    errorColor: Color(0xffffe685),
    primaryTextTheme:
        Typography.material2018(platform: TargetPlatform.android).black,
    textTheme: Typography.material2018(platform: TargetPlatform.android).black,
    accentTextTheme:
        Typography.material2018(platform: TargetPlatform.android).white,
    primaryIconTheme: IconThemeData(color: Color.fromRGBO(0, 133, 251, 1.0)),
    iconTheme: IconThemeData(color: Colors.white, size: 32.0),
    appBarTheme: base.appBarTheme.copyWith(
      color: Colors.white,
      actionsIconTheme: IconThemeData(color: Color.fromRGBO(0, 133, 251, 1.0)),
    ),
  );
}

ThemeData _buildDarktheme() {
  final base = ThemeData.dark();

  return base.copyWith(
    brightness: Brightness.dark,
    primaryColor: Color(0xffffffff),
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: Color(0xFF4B89EB),
    primaryColorDark: Color(0xFF00081C),
    accentColor: Color(0xffffffff),
    accentColorBrightness: Brightness.dark,
    canvasColor: Color(0xFF0c2031),
    scaffoldBackgroundColor: Color(0xFF0c2031),
    bottomAppBarColor: Color(0xff4D88EC),
    cardColor: Colors.black,
    dividerColor: Color.fromRGBO(0, 0, 0, 0.12),
    highlightColor: Color(0xFF81acf1),
    splashColor: Color(0x66c8c8c8),
    selectedRowColor: Color(0xfff5f5f5),
    unselectedWidgetColor: Colors.white,
    disabledColor: Color(0x77ffffff),
    buttonColor: Color(0xFF4B89EB),
    toggleableActiveColor: Color(0xFF4B89EB),
    secondaryHeaderColor: Color(0xfffff3e0),
    textSelectionColor: Color(0xffffcc80),
    cursorColor: Colors.orange,
    textSelectionHandleColor: Color(0xffffb74d),
    backgroundColor: Color(0xFF0c2031),
    dialogBackgroundColor: Color(0xFF0c2031),
    indicatorColor: Color(0xfff5f5f5),
    hintColor: Color(0x80ffffff),
    errorColor: Color(0xFFeddc97),
    primaryTextTheme:
        Typography.material2018(platform: TargetPlatform.android).white,
    textTheme: Typography.material2018(platform: TargetPlatform.android).white,
    accentTextTheme: Typography.material2018(platform: TargetPlatform.android).white,
    primaryIconTheme: IconThemeData(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
    dividerTheme: base.dividerTheme.copyWith(
      color: Color(0xff444444),
    ),
    appBarTheme: base.appBarTheme.copyWith(
      color: Color(0xFF0c2031),
      shadowColor: Color(0xff222222),
      elevation: 1.0,
    ),
  );
}

class Themes {
  final ThemeData themeData;

  Themes({@required this.themeData});

  factory Themes.lightTheme() {
    return Themes(themeData: _lightTheme);
  }

  factory Themes.darkTheme() {
    return Themes(themeData: _darkTheme);
  }
}
