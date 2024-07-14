import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Views/Widgets/profile_image.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomHomeAppBarBody extends StatelessWidget
{
  const CustomHomeAppBarBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Image(image: const AssetImage('Assets/Images/cash-wallet.png'), height: 70.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text('Expense Tracker', style: TextStyle(color: black, fontSize: 20.sp, fontWeight: FontWeight.bold)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.22),

        const ProfileImage(),

        const SizedBox.shrink()
      ],
    );
  }
}