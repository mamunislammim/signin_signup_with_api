import 'package:flutter/material.dart';
import 'package:signup_signin_ui_design/Screen/detailsScreens.dart';
import 'package:signup_signin_ui_design/Screen/third_screen.dart';
import '../ProviderScreen/providerlatestNewsScreen.dart';
import 'category_screen.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {

  late   int _currentIndex= 0;

  final List<Widget> _goPage=[
    const LatestNewsProvider(),
    const CategoryScreen(),
    const ThirdScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _goPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffca4b4b),
        currentIndex: _currentIndex,
        onTap: (val){
          setState(() {
            _currentIndex=val;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_sharp),label: "Latest"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile"),
        ],
      ),
    );
  }
}
