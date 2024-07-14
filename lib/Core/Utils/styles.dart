import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constant_colors.dart';

abstract class Styles
{
  static OutlineInputBorder dropDownDecoration() => OutlineInputBorder(borderRadius: BorderRadius.circular(22.5), borderSide: const BorderSide(color: white, width: 3.5));
  static OutlineInputBorder textFormFieldDecoration() => OutlineInputBorder(borderRadius: BorderRadius.circular(22.5), borderSide: const BorderSide(color: black, width: 3.5));

  static const modalBottomSheetStyle = RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25)));
  static final styleText25Black = TextStyle(color: black, fontSize: 25.sp, fontWeight: FontWeight.bold);
  static final styleText22Black = TextStyle(color: black, fontSize: 22.sp, fontWeight: FontWeight.bold);
  static final styleText18Black = TextStyle(color: black, fontSize: 18.sp, fontWeight: FontWeight.bold);
  static final styleText14Black = TextStyle(color: black, fontSize: 14.sp, fontWeight: FontWeight.bold);
  static final styleText14White = TextStyle(color: white, fontSize: 14.sp, fontWeight: FontWeight.bold);
  static final styleText18Grey = TextStyle(color: grey, fontSize: 18.sp, fontWeight: FontWeight.bold);
  static final styleText20White = TextStyle(color: white, fontSize: 20.sp, fontWeight: FontWeight.bold);
  static final styleText20Black = TextStyle(color: black, fontSize: 20.sp, fontWeight: FontWeight.bold);
}