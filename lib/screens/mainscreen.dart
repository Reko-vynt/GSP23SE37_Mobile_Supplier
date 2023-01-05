import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gsp23se37_mobile_supplier/screens/homescreen.dart';
import 'package:gsp23se37_mobile_supplier/screens/orderscreen.dart';
import 'package:gsp23se37_mobile_supplier/screens/productscreen.dart';
import 'package:gsp23se37_mobile_supplier/screens/profilescreen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
        children: [
          Container(
            child: const HomeScreen(),
          ),
          Container(
            child: const OrderScreen(),
          ),
          Container(
            child: const ProductScreen(),
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            child: const ProfileScreen(),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        unselectedItemColor: Colors.black.withOpacity(0.5),
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
            currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: const Icon(
                FontAwesomeIcons.house,
                size: 18,
              ),
              title: const Text('Home')),
          SalomonBottomBarItem(
              icon: const Icon(
                FontAwesomeIcons.listCheck,
                size: 18,
              ),
              title: const Text('Order')),
          SalomonBottomBarItem(
              icon: const Icon(
                FontAwesomeIcons.box,
                size: 18,
              ),
              title: const Text('Product')),
          SalomonBottomBarItem(
              icon: Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      FontAwesomeIcons.message,
                      size: 18,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 8,
                      height: 8,
                    )
                  ],
                ),
              ]),
              title: const Text('Chat')),
          SalomonBottomBarItem(
              icon: const Icon(
                FontAwesomeIcons.userGear,
                size: 18,
              ),
              title: const Text('Profile')),
        ],
      ),
    );
  }
}
