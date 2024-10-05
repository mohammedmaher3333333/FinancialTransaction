import 'package:flutter/material.dart';
import 'package:untitled/core/resource/color_manager.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: ColorManager.viewBackground,
      selectedItemColor: ColorManager.white,
      unselectedItemColor: ColorManager.black,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? buildItem(iconData: Icons.home_outlined)
              : const Icon(Icons.home_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? buildItem(iconData: Icons.credit_card_outlined)
              : const Icon(Icons.credit_card_outlined),
          label: '', // تعيين النص كـ فارغ
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
              ? buildItem(iconData: Icons.add)
              : const Icon(Icons.add),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 3
              ? buildItem(iconData: Icons.attach_money_outlined)
              : const Icon(Icons.attach_money_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 4
              ? buildItem(iconData: Icons.account_circle_outlined)
              : const Icon(Icons.account_circle_outlined),
          label: '',
        ),
      ],
    );
  }

  Container buildItem({required iconData}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        iconData,
      ),
    );
  }
}
