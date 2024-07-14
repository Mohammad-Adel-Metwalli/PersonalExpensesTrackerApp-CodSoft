import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ProfileImage extends StatelessWidget
{
  const ProfileImage({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 65.h,
      width: 65.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: white, width: 4.5),
        image: const DecorationImage(image: AssetImage('Assets/Images/profile-image.png')),
      ),
    );
  }
}