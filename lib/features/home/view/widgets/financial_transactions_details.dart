import 'package:flutter/material.dart';
import 'package:untitled/core/resource/color_manager.dart';
import 'package:untitled/core/resource/styles_manager.dart';
import 'package:untitled/core/resource/values_manager.dart';

class FinancialTransactionsDetails extends StatelessWidget {
  const FinancialTransactionsDetails(
      {super.key, required this.amount, required this.finance});

  final String amount;
  final String finance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('\$$amount',style: getMediumStyle(color: ColorManager.primary),),
        const SizedBox(
          height: AppSize.s8,
        ),
        Text(finance),
      ],
    );
  }
}
