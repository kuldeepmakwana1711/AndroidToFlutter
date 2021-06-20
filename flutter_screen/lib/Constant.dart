import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO Set all color for application here
const kRedColor = Color(0xFFE54A3A);
const kWhiteColor = Colors.white;

TextStyle kTextStyle20PRW = TextStyle(
  fontFamily: "PoppinsRegular", color: kWhiteColor, fontSize: Platform.isAndroid ? 20.0 : 20.0,);

TextStyle kTextStyle14PRW = TextStyle(
  fontFamily: "PoppinsRegular", color: kWhiteColor, fontSize: Platform.isAndroid ? 14.0 : 16.0,);

TextStyle kTextStyle16PBR = TextStyle(
  fontFamily: "PoppinsBold", color: kRedColor, fontSize: Platform.isAndroid ? 14.0 : 16.0,);
