import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class TitleField extends StatelessWidget
{
  const TitleField({super.key, this.onChanged,});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      cursorColor: black,
      style: Styles.styleText18Black,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        label: Text('Title', style: Styles.styleText18Grey),
        prefixIcon: Icon(Icons.title_rounded, color: orange, size: 30.h),
        focusedBorder: Styles.textFormFieldDecoration(),
        disabledBorder: Styles.textFormFieldDecoration(),
        enabledBorder: Styles.textFormFieldDecoration(),
        border: Styles.textFormFieldDecoration(),
      ),
      onChanged: onChanged,
    );
  }
}