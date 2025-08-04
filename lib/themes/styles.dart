import 'package:flutter/material.dart';


abstract class Styles{

  static const TextStyle productRowTotal=TextStyle( );

  static const TextStyle productRowItemPrice=TextStyle(
    color: Color(0xFF8E893),
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

}