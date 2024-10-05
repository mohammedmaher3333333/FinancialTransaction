import 'package:flutter/material.dart';
import 'package:untitled/features/recent_transaction/view/widgets/recent_list_item.dart';
import '../../../../core/resource/values_manager.dart';
import '../../view_model/recent_transaction_model.dart';

class RecentListView extends StatefulWidget {
  const RecentListView({super.key});

  @override
  _RecentListViewState createState() => _RecentListViewState();
}

class _RecentListViewState extends State<RecentListView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
      child: SizedBox(
        height: AppSize.s50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: RecentTransactionModel.recentTransactionData.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: RecentListItem(
              text: RecentTransactionModel.recentTransactionData[index],
              isSelected: _selectedIndex == index, // تحديد العنصر المختار
            ),
          ),
        ),
      ),
    );
  }
}
