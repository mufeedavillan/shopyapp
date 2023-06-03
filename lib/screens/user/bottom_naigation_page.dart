import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/screens/common/login_page.dart';
import 'package:ecommerceapp/screens/user/cart_page.dart';
import 'package:ecommerceapp/screens/user/home_page.dart';
import 'package:ecommerceapp/screens/user/logout_page.dart';
import 'package:ecommerceapp/screens/user/notification_page.dart';
import 'package:ecommerceapp/screens/user/profile_page.dart';
import 'package:ecommerceapp/screens/user/setting_page.dart';
import 'package:ecommerceapp/widgets/apptext_widget.dart';
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
  List<Widget> drawer_widget=[];

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

AppColors _colors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: _colors.whiteColor,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader( // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xff764abc)),
              accountName: Text(
                "Jhone",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "Jhone.earth@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 50,
               // backgroundColor: Color(0xff531c94),
                backgroundImage: AssetImage("asset/images/logo.png"),
              )
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const AppText('Settings',),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Logout'),
              onTap: () {
                print("Logging out to login screen");
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false);

              },
            ),
          ],
        ),
      ),


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
