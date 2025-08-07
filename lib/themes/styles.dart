import 'package:flutter/material.dart';


abstract class Styles{

static const lightColorScheme=ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff026b5d),
      surfaceTint: Color(0xff026b5d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9ff2e0),
      onPrimaryContainer: Color(0xff005046),
      secondary: Color(0xff4a635d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcde8e1),
      onSecondaryContainer: Color(0xff334b46),
      tertiary: Color(0xff874b6c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd8e9),
      onTertiaryContainer: Color(0xff6c3454),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff5fbf7),
      onSurface: Color(0xff171d1b),
      onSurfaceVariant: Color(0xff3f4946),
      outline: Color(0xff6f7976),
      outlineVariant: Color(0xffbec9c5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3230),
      inversePrimary: Color(0xff83d5c4),
      primaryFixed: Color(0xff9ff2e0),
      onPrimaryFixed: Color(0xff00201b),
      primaryFixedDim: Color(0xff83d5c4),
      onPrimaryFixedVariant: Color(0xff005046),
      secondaryFixed: Color(0xffcde8e1),
      onSecondaryFixed: Color(0xff06201b),
      secondaryFixedDim: Color(0xffb1ccc5),
      onSecondaryFixedVariant: Color(0xff334b46),
      tertiaryFixed: Color(0xffffd8e9),
      onTertiaryFixed: Color(0xff380727),
      tertiaryFixedDim: Color(0xfffcb0d6),
      onTertiaryFixedVariant: Color(0xff6c3454),
      surfaceDim: Color(0xffd5dbd8),
      surfaceBright: Color(0xfff5fbf7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f2),
      surfaceContainer: Color(0xffe9efec),
      surfaceContainerHigh: Color(0xffe3eae6),
      surfaceContainerHighest: Color(0xffdee4e1),
    );


  static const darktColorScheme=ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff83d5c4),
      surfaceTint: Color(0xff83d5c4),
      onPrimary: Color(0xff00372f),
      primaryContainer: Color(0xff005046),
      onPrimaryContainer: Color(0xff9ff2e0),
      secondary: Color(0xffb1ccc5),
      onSecondary: Color(0xff1c3530),
      secondaryContainer: Color(0xff334b46),
      onSecondaryContainer: Color(0xffcde8e1),
      tertiary: Color(0xfffcb0d6),
      onTertiary: Color(0xff511d3c),
      tertiaryContainer: Color(0xff6c3454),
      onTertiaryContainer: Color(0xffffd8e9),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1513),
      onSurface: Color(0xffdee4e1),
      onSurfaceVariant: Color(0xffbec9c5),
      outline: Color(0xff89938f),
      outlineVariant: Color(0xff3f4946),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4e1),
      inversePrimary: Color(0xff026b5d),
      primaryFixed: Color(0xff9ff2e0),
      onPrimaryFixed: Color(0xff00201b),
      primaryFixedDim: Color(0xff83d5c4),
      onPrimaryFixedVariant: Color(0xff005046),
      secondaryFixed: Color(0xffcde8e1),
      onSecondaryFixed: Color(0xff06201b),
      secondaryFixedDim: Color(0xffb1ccc5),
      onSecondaryFixedVariant: Color(0xff334b46),
      tertiaryFixed: Color(0xffffd8e9),
      onTertiaryFixed: Color(0xff380727),
      tertiaryFixedDim: Color(0xfffcb0d6),
      onTertiaryFixedVariant: Color(0xff6c3454),
      surfaceDim: Color(0xff0e1513),
      surfaceBright: Color(0xff343b39),
      surfaceContainerLowest: Color(0xff090f0e),
      surfaceContainerLow: Color(0xff171d1b),
      surfaceContainer: Color(0xff1b211f),
      surfaceContainerHigh: Color(0xff252b29),
      surfaceContainerHighest: Color(0xff303634),
    );
  

  
 


  




  static const TextStyle productRowTotal=TextStyle( );

  static const TextStyle productRowItemPrice=TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle searchText=TextStyle(
    color:Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle deliveryTimeLabel=TextStyle(
    color: Color(0xFFC2C2C2),
    fontWeight: FontWeight.w300,

  );

  static const TextStyle deliveryTime=
  TextStyle(
    color:Colors.grey,
  );

  static const TextStyle productRowItemName = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);


}