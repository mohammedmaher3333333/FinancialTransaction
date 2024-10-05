import 'package:flutter/material.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/routes_manager.dart';
import '../../../../core/resource/strings_manager.dart';
import '../../../../core/resource/styles_manager.dart';
import '../../../../core/resource/values_manager.dart';

class LoginAction extends StatelessWidget {
  const LoginAction({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, Routes.mainRoute);
      },
      child: Container(
        height: AppSize.s70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppSize.s40,
          ),
          color: ColorManager.primary,
        ),
        child: Center(
          child: Text(
            AppStrings.loginLogin,
            style: getBoldStyle(
              color: ColorManager.white,
            ),
          ),
        ),
      ),
    );
  }
}
