import 'package:flutter/material.dart';
import 'package:untitled/core/resource/color_manager.dart';
import 'package:untitled/core/resource/values_manager.dart';

class VerticalLine extends StatelessWidget {
  const VerticalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: ColorManager.grey, // لون الخط
      width: AppSize.s_5, // عرض الخط
      height: AppSize.s50, // ارتفاع 20 سم المحسوب بالبكسل
    );
  }
}
