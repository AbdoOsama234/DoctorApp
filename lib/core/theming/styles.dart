import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/theming/colors.dart';
import 'package:project/core/theming/font_widgets_helpers.dart';

class TextStyles{
  static TextStyle font24Black700Weight=TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static TextStyle font32BlueBold=TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainBlue
  );
  static TextStyle font13GrayRegular=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManager.gray

  );
  static TextStyle font14GrayRegular=TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.gray
  );

  static TextStyle font14LightGrayRegular=TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.lightgray
  );

  static TextStyle font14DarkBlueMedium=TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.darkBlue
  );

  static TextStyle font24BlueBold=TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.mainBlue
  );

  static TextStyle font13BlueRegular=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.mainBlue
  );


  static TextStyle font13BlueSemiBold=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManager.mainBlue
  );

  static TextStyle font13DarkBlueRegular=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.darkBlue
  );

  static TextStyle font13DarkBlueMedium=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.darkBlue
  );
  static TextStyle font13BlueMedium=TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.mainBlue
  );
  static TextStyle font16WhiteSemiBold=TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white
  );
}