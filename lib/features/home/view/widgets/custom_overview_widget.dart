import 'package:flutter/material.dart';
import 'package:untitled/core/resource/color_manager.dart';
import 'package:untitled/core/resource/styles_manager.dart';
import 'package:untitled/core/resource/values_manager.dart';

class CustomOverviewWidget extends StatelessWidget {
  const CustomOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
             Text('Overview',style: getRegularStyle(color: ColorManager.primary),), //todo add string to app string manager
            const SizedBox(width: AppSize.s8),
            Stack(
              clipBehavior: Clip.none,
              children: [
                 const Icon(Icons.notifications_none_outlined,size: AppSize.s40,),
                Positioned(
                  top: AppSize.s8,
                  right: AppSize.s8,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Text('Sept 13, 2020',style: getSemiBoldStyle(color: ColorManager.primary,),),//todo add string to app string manager
      ],
    );
  }
}
