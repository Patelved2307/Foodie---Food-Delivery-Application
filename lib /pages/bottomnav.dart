import 'package:flutter/material.dart';
import 'package:foodie/pages/home_page.dart';
import 'package:foodie/pages/order.dart';
import 'package:foodie/pages/profile.dart';
import 'package:foodie/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex=0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState(){
    homePage = HomePage();
    profile = Profile();
    order = Order();
    wallet = Wallet();
    pages = [homePage, profile, order, wallet];

    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
          backgroundColor: Colors.orange,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentTabIndex=index;
            });
          },
          items:[
            Icon(Icons.home_outlined, color: Colors.black,),
            Icon(Icons.shopping_bag_outlined, color: Colors.black,),
            Icon(Icons.wallet_outlined, color: Colors.black,),
            Icon(Icons.person_outlined, color: Colors.black,),
          ]),
      body: pages[currentTabIndex],
      );
  }
}
