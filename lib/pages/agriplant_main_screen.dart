import 'package:agriculture_mobile_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'agriplant_home_page.dart';

class AgriplantMainScreen extends StatefulWidget {
  const AgriplantMainScreen({super.key});

  @override
  State<AgriplantMainScreen> createState() => _AgriplantMainScreenState();
}

class _AgriplantMainScreenState extends State<AgriplantMainScreen> {
  final pages = [
    AgriplantHomePage(),
    Scaffold(body: Center(child: const Text("Services"))),
    Scaffold(body: Center(child: const Text("Cart"))),
    Scaffold(body: Center(child: const Text("Profile"))),
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: mainGreenColor,
        currentIndex: currentPageIndex,
        onTap: (value){
          setState(() {
            currentPageIndex = value;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            label: "Home",
            activeIcon: Icon(IconlyBold.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Services",
            activeIcon: Icon(Icons.store),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
            activeIcon: Icon(Icons.shopping_cart),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
      body: pages[currentPageIndex],
    );
  }
}
