import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled/core/resource/assets_manager.dart';
import 'package:untitled/core/resource/color_manager.dart';

class CircleWithImages extends StatelessWidget {
  const CircleWithImages({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 150; // نصف القطر للدائرة الخارجية

    return Center(
      child: SizedBox(
        width: radius * 2,
        height: radius * 2,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // دوائر الخلفية
            Container(
              width: 255,
              height: 255,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.colorCircle, // لون خلفية الشفافة
              ),
            ),
            Container(
              width: 253,
              height: 253,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.viewBackground, // لون خلفية الشفافة
              ),
            ),
            Container(
              width: 190,
              height: 190,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.colorCircle,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.viewBackground,
              ),
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.primary,
              ),
            ),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.viewBackground,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.groundImage,
              ),
            ),
            // العنصر الرئيسي
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ImageAssets.personImages),
                ),
              ),
            ),
            // الصور الخارجية الموزعة بشكل متساوي
            // for (int i = 0; i < 5; i++)
            //   Positioned(
            //     left: radius + outerRadius * cos(2 * pi * i / 5) - 35,
            //     top: radius + outerRadius * sin(2 * pi * i / 5) - 35,
            //     child: const CircleAvatar(
            //       radius: 30,
            //       backgroundImage: AssetImage(ImageAssets.personImages),
            //     ),
            //   ),
            const Positioned(
              top:0,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageAssets.personImages), // صورة العنصر في المنتصف
              ),
            ),const Positioned(
              left: 0,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageAssets.personImages), // صورة العنصر في المنتصف
              ),
            ),const Positioned(
              right:0,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageAssets.personImages), // صورة العنصر في المنتصف
              ),
            ),const Positioned(
              left:40,
              bottom: 20,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageAssets.personImages), // صورة العنصر في المنتصف
              ),
            ),const Positioned(
              right:40,
              bottom: 20,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageAssets.personImages), // صورة العنصر في المنتصف
              ),
            ),
          ],
        ),
      ),
    );
  }
}
