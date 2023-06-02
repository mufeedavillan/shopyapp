import 'package:ecommerceapp/screens/common/login_page.dart';
import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var d = Duration(seconds: 5);
  @override
  void initState() {
    Future.delayed(d, () {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/logo.png'),
              ),

              const AppText(
                "Shopy",
                size: 32,
                color: Colors.purple,
                fw: FontWeight.w700,
              ),
              SizedBox(
                height: 25,
              ),

              ///const AppText("Please your eyes on\nthe trending items a shopy",size: 20,fw: FontWeight.w700,color: Colors.black87,),
            ],
          )),
    );
  }
}
