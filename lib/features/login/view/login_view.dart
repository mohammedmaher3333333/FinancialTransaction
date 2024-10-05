import 'package:flutter/material.dart';
import 'package:untitled/core/resource/assets_manager.dart';
import 'package:untitled/core/resource/color_manager.dart';
import 'package:untitled/core/resource/strings_manager.dart';
import 'package:untitled/core/resource/styles_manager.dart';
import 'package:untitled/core/resource/values_manager.dart';
import 'package:untitled/features/login/view/widget/input_form.dart';
import 'package:untitled/features/login/view/widget/login_action.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.viewBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: AppSize.s50,
                backgroundImage: AssetImage(
                  ImageAssets.personImages,
                ),
              ),
              const SizedBox(
                height: AppPadding.p70,
              ),
              InputForm(
                hint: AppStrings.loginUserName,
                textEditingController: emailController,
                title: AppStrings.loginEmailAddress,
                prefixIcon: Icons.mail_outline_outlined,
              ),
              const SizedBox(height: AppPadding.p28),
              // Password Input
        
              InputForm(
                title: AppStrings.loginPassword,
                hint: AppStrings.loginPasswordHint,
                textEditingController: passController,
                prefixIcon: Icons.lock_outline_rounded,
                suffixIcon: Icons.remove_red_eye_outlined,
                obscureText: true,
              ),
              const SizedBox(height: AppPadding.p28),
              // login Button
              const LoginAction(),
        
              const SizedBox(height: AppPadding.p28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.loginSignup,
                    style: getBoldStyle(color: ColorManager.grey),
                  ),
                  Text(
                    AppStrings.loginForgotPassword,
                    style: getBoldStyle(color: ColorManager.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
