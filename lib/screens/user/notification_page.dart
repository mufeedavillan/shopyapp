import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  AppColors _colors = AppColors();
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      //appBar: AppBar(
       // title: Text("Notifications"),
        //centerTitle: true,

      //),

      body: Container(
        height: size.height,
        width: size.width,

        child: Column(
          children: [
SizedBox(height: 20,),
            AppText("Notification Page",color: _colors.primaryColor,fw:FontWeight.w700,size: 22,)
          ],
        ),
      ),
    );
  }
}
