import 'package:flutter/material.dart';

import '../../core/resource/color_manager.dart';
import '../account_balance/account_balance.dart';
import '../account_details/account_details.dart';
import '../add _transaction/add_transaction.dart';
import '../bottom_navigation_bar/bottom_navigation_bar.dart';
import '../home/view/home_view.dart';
import '../profile/profile.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    AccountDetails(),
    AddTransaction(),
    AccountBalance(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.viewBackground,
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
