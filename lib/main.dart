import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/screens/common/splash_page.dart';
import 'package:flutter/material.dart';

import 'screens/common/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: AppColors().primaryColor,
              showSelectedLabels: false,
              selectedIconTheme:
                  IconThemeData(color: AppColors().secondaryColor, size: 30)),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: AppColors().whiteColor),
              backgroundColor: AppColors().primaryColor)),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashPage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
