import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,

        child: Column(
          children: [

            AppText("Notification Page")
          ],
        ),
      ),
    );
  }
}
