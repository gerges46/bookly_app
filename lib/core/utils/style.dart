import 'package:flutter/material.dart';

abstract class Styles {
  // gets style to size
  static const textStyle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  // you know styles from app if you have more that style have size 18 do style for it
  //dont use syle for more than font family only one for all app if you have exeption do it in const file use copy with and font family
  // and use that for weight that repeate
  // dont use this for color
  static const textStyle20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.normal);
  static const textStyle30 =
      TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
  static const textStyle14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const textStyle16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
}
