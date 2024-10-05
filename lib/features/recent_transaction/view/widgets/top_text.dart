import 'package:flutter/material.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/styles_manager.dart';
import '../../../../core/resource/values_manager.dart';


class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(AppSize.s28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recent Transaction',
            style: getRegularStyle(color: ColorManager.primary),
          ),
          Text(
            ' See all',
            style: getSemiBoldStyle(color: ColorManager.darkGrey),
          ),
        ],
      ),
    );
  }
}
