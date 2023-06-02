import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,

        child: Column(
          children: [

            AppText("Profile Page")
          ],
        ),
      ),
    );
  }
}
