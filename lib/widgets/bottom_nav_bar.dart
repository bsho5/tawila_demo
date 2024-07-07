import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/cart/controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../screens/cart/view.dart';
import '../screens/fav/view.dart';
import '../screens/home/view.dart';
import '../screens/orders/view.dart';

class BottomNavBar extends StatefulWidget {
  static String id = 'BottomNavBar';

  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    GroceryScreen(),
    const OrdersScreen(),
    FavoritesScreen(),
    CartScreen(),
  ];
  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CartController>(builder: (cartController) {
                return Text(
                  '\$${cartController.totalAmount}',
                );
              }),
              Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: const FaIcon(
                    FontAwesomeIcons.opencart,
                    size: 17,
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: AppColors.appBackgroundColor,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 19,
        selectedFontSize: 12,
        onTap: onTapTapped,
        currentIndex: _currentIndex,
        elevation: 0.0,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.bottomNavBarUnSelectedIconColor,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.bottomNavBarColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(FontAwesomeIcons.shop),
            ),
            label: 'Grocery',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(FontAwesomeIcons.bell),
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(FontAwesomeIcons.heart),
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(FontAwesomeIcons.wallet),
            ),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
