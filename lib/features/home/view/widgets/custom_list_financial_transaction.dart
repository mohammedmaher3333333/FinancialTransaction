import 'package:flutter/material.dart';
import 'package:untitled/features/home/view/widgets/financial_transaction.dart';

import '../../../../core/resource/values_manager.dart';

class CustomListFinancialTransaction extends StatelessWidget {
  const CustomListFinancialTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          FinancialTransaction(
            iconData: Icons.arrow_upward_outlined,
            title: 'Sent',
            subTitle: 'Sending Payment to Clients',
            amount: '150',
          ),
          SizedBox(
            height: AppSize.s20,
          ),
          FinancialTransaction(
            iconData: Icons.arrow_downward_outlined,
            title: 'Receive',
            subTitle: 'Receiving Salary from company',
            amount: '250',
          ),
          SizedBox(
            height: AppSize.s20,
          ),
          FinancialTransaction(
            iconData: Icons.local_atm_outlined,
            title: 'Loan',
            subTitle: 'Loan for the car',
            amount: '400',
          ),
        ],
      ),
    );
  }
}
