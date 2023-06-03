import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart'
;
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}
AppColors _colors = AppColors();
class _SettingPageState extends State<SettingPage> {
  AppColors _colors = AppColors();
  @override

  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
          appBar:AppBar(backgroundColor: _colors.primaryColor),
      body:Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(height: 20,),
            AppText("Settings",color: _colors.primaryColor,fw:FontWeight.w700,size: 22,),
          ],
          //
        ),
     // AppText("Profile",color: _colors.primaryColor,fw:FontWeight.w700,size: 22,),
      ),
    );
  }
}
