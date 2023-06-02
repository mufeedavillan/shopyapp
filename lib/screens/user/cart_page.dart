import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,

        child: Column(
          children: [

            AppText("Cart Page")
          ],
        ),
      ),
    );
  }
}
