import 'package:flutter/material.dart';
import 'package:untitled/core/resource/color_manager.dart';
import 'package:untitled/core/resource/styles_manager.dart';
import 'package:untitled/core/resource/values_manager.dart';
import 'package:untitled/features/recent_transaction/view/widgets/circle_with_images.dart';
import 'package:untitled/features/recent_transaction/view/widgets/recent_action.dart';
import 'package:untitled/features/recent_transaction/view/widgets/recent_financial_transaction.dart';
import 'package:untitled/features/recent_transaction/view/widgets/recent_list_view.dart';
import 'package:untitled/features/recent_transaction/view/widgets/top_icons.dart';
import 'package:untitled/features/recent_transaction/view/widgets/top_text.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.viewBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: AppSize.s20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopIcons(),
              const TopText(),
              const RecentListView(),
              const SizedBox(
                height: AppSize.s8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
                child: Text(
                  'Today',
                  style: getSemiBoldStyle(
                    color: ColorManager.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p28),
                child: RecentFinancialTransaction(
                  iconData: Icons.drafts_outlined,
                  title: 'Payment',
                  subTitle: 'Payment from Andrea',
                  amount: '30.00',
                ),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              const SizedBox(
                height: 300, // أو أي حجم تراه مناسبًا
                child: CircleWithImages(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p28),
                child: RecentAction(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
