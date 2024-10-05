import 'package:flutter/material.dart';
import 'package:untitled/core/resource/routes_manager.dart';
import 'package:untitled/features/home/view/widgets/vertical_line.dart';

import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/strings_manager.dart';
import '../../../../core/resource/styles_manager.dart';
import '../../../../core/resource/values_manager.dart';
import 'financial_transactions_details.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu_outlined),
                Icon(Icons.more_vert_outlined),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, Routes.recentTransactionRoute);
                  },
                  child: const CircleAvatar(
                    radius: AppSize.s50,
                    backgroundImage: AssetImage(ImageAssets.avatar),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s12,
                ),
                Text(
                  AppStrings.homeName,
                  style: getRegularStyle(color: ColorManager.primary),
                ),
                const SizedBox(
                  height: AppSize.s4,
                ),
                Text(
                  AppStrings.homeJob,
                  style: getMediumStyle(color: ColorManager.darkGrey),
                ),
                const SizedBox(
                  height: AppSize.s28,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FinancialTransactionsDetails(
                      amount: '8900', //todo add string to app string manager
                      finance: 'Income',
                    ),
                    VerticalLine(),
                    FinancialTransactionsDetails(
                      amount: '5500',
                      finance: 'Expenses',
                    ),
                    VerticalLine(),
                    FinancialTransactionsDetails(
                      amount: '890',
                      finance: 'Loan',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
          ],
        ),
      ),
    );
  }
}
