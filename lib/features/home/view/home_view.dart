import 'package:flutter/material.dart';
import 'package:untitled/core/resource/values_manager.dart';
import 'package:untitled/features/home/view/widgets/custom_card.dart';
import 'package:untitled/features/home/view/widgets/custom_list_financial_transaction.dart';
import 'package:untitled/features/home/view/widgets/custom_overview_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: AppPadding.p28,
        right: AppPadding.p20,
        left: AppPadding.p20,
      ),
      child: Column(
        children: [
          CustomCard(),
          SizedBox(
            height: AppSize.s8,
          ),
          CustomOverviewWidget(),
          SizedBox(
            height: AppSize.s8,
          ),
          CustomListFinancialTransaction(),
        ],
      ),
    );
  }
}
