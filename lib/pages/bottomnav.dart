import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/Home.dart';
import 'package:helloworld/pages/order.dart';
import 'package:helloworld/pages/profile.dart';
import 'package:helloworld/pages/wallet.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Wallet wallet;
  late Order order;

  @override
  void initState() {
    const homepage = Home();
    const order = Order();
    const wallet = Wallet();
    const profile = Profile();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.lightGreen,
        height: 50,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.person_2_outlined,
            color: Colors.black,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
