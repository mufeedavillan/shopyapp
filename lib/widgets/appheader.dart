import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final height;
  final width;
  final imght;
  final imgwdth;
  const AppHeader({super.key,this.height,this.width,this.imght,this.imgwdth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/logo.png',
              height: imght,
              width: imgwdth,
            ),
          ),

          const AppText(
            "Shopy",
            size: 32,
            color: Colors.purple,
            fw: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
