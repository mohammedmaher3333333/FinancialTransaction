import 'package:flutter/material.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/styles_manager.dart';
import '../../../../core/resource/values_manager.dart';

class RecentFinancialTransaction extends StatelessWidget {
  const RecentFinancialTransaction(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subTitle,
      required this.amount});

  final IconData iconData;
  final String title;
  final String subTitle;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s28)),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Row(

          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(AppSize.s16),
              ),
              width: AppSize.s40,
              height: AppSize.s40,
              child: Icon(iconData,size: AppSize.s40,color: ColorManager.primary,),
            ),
            const SizedBox(width: AppSize.s16,),
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: getRegularStyle(color: ColorManager.black),
                ),
                SizedBox(
                  width:210,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        subTitle,
                        style: getSemiBoldStyle12(color: ColorManager.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '\$$amount',
                        style: getSemiBoldStyle(color: ColorManager.primary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
