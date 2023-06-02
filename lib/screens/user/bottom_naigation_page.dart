import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/screens/user/cart_page.dart';
import 'package:ecommerceapp/screens/user/home_page.dart';
import 'package:ecommerceapp/screens/user/notification_page.dart';
import 'package:ecommerceapp/screens/user/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  final Map? data;
  const BottomNavigationPage({super.key, this.data});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {


  int _selectedIndex=0;

  List<Widget> _widgets=[];

  Map? _data;

  @override
  void initState() {
    _data=widget.data;

    _widgets=[
      HomePage(data: _data,),
      CartPage(),
      NotificationPage(),
      ProfilePage()
    ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
      },
        items: [
          BottomNavigationBarItem(
              backgroundColor: AppColors().primaryColor,
              label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Card", icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              label: "Notification", icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(Icons.account_box_sharp)),
        ],
      ),
      body: _widgets.elementAt(_selectedIndex)
    );
  }
}
