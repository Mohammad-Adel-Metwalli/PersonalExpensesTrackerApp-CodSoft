import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class AmountField extends StatelessWidget
{
  const AmountField({super.key, this.onChanged,});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      cursorColor: black,
      style: Styles.styleText18Black,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text('Amount', style: Styles.styleText18Grey),
        prefixIcon: Icon(CupertinoIcons.money_pound_circle_fill, color: green, size: 30.h),
        focusedBorder: Styles.textFormFieldDecoration(),
        disabledBorder: Styles.textFormFieldDecoration(),
        enabledBorder: Styles.textFormFieldDecoration(),
        border: Styles.textFormFieldDecoration(),
      ),
      onChanged: onChanged,
    );
  }
}