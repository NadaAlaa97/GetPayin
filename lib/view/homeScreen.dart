import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_payin/view/home_screen_body.dart';
import 'package:get_payin/view/profileScreen/profileScreen.dart';
import 'package:get_payin/view/walletScreen/walletScreen.dart';
import 'package:get_payin/viewModel/homeViewModel.dart';
import 'package:provider/provider.dart';
import 'chartScreen/chartScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreenBody(),
    const WalletScreen(),
    const ChartScreen(),
    const ProfileScreen(),
  ];

  void selectScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
      child: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            iconSize: 25.spMin,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            onTap: selectScreen,
            items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_outlined),label: 'wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined),label: 'chart'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
        ]),
      ),
    );
  }
}
