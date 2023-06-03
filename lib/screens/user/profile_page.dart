import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
    var names=["My Orders","Saved Address","reviews","Coupens","Settings"];
    var themeIcons=[Icons.shopping_cart,Icons.place,Icons.reviews,Icons.token,Icons.settings];
  AppColors _colors = AppColors();
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),

        height: size.height,
        width: size.width,

        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: _colors.secondaryColor,
              ),
            ),
            SizedBox(height: 20,),
            AppText("Profile",color: _colors.primaryColor,fw:FontWeight.w700,size: 22,),
            SizedBox(height: 20,),
            ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context,int index)
                {
                  return ListTile(
                    leading: Icon(themeIcons[index]),
                    title: Text("${names[index]}"),
                    trailing: Icon(Icons.forward)
                  );
                },
                separatorBuilder: (context,int index)
                {
                  return(Divider(height: 10,
                    thickness: 3,
                    color: _colors.primaryColor,

                  ));
                },

                itemCount: names.length)
          ],
        ),
      ),
    );
  }
}
