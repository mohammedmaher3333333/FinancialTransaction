import 'package:flutter/material.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/styles_manager.dart';
import '../../../../core/resource/values_manager.dart';

class RecentListItem extends StatelessWidget {
  const RecentListItem({
    super.key,
    required this.text,
    required this.isSelected,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: AppPadding.p14,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
        vertical: AppPadding.p8,
      ),
      decoration: BoxDecoration(
        color: isSelected ? ColorManager.primary : Colors.white,
        borderRadius: BorderRadius.circular(
          AppSize.s28,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: getSemiBoldStyle(
            color: isSelected ? Colors.white : ColorManager.darkGrey,
          ),
        ),
      ),
    );
  }
}
