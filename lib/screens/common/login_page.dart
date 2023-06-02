import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/screens/user/bottom_naigation_page.dart';
import 'package:ecommerceapp/services/validatorService.dart';
import 'package:ecommerceapp/widgets/appbutton.dart';
import 'package:ecommerceapp/widgets/appheader.dart';
import 'package:ecommerceapp/widgets/apptext_widget.dart';
import 'package:ecommerceapp/widgets/customtextformfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers for email and password
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //formkey for validation
  final _loginKey = GlobalKey<FormState>();

  //disposing controllers
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  AppColors _colors = AppColors();
  ValidateService _validateService = ValidateService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: _colors.primaryColor),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:  CustomScrollView(

          slivers: [

            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 5.0,
                    child: Container(
                      height: 450,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Form(
                        key: _loginKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppHeader(
                              height: 85.0,
                              imght: 45.0,
                              imgwdth: 45.0,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AppText(
                              "Login to explore",
                              size: 22,
                              fw: FontWeight.w700,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              controller: emailController,
                              validator: (value) {
                                return _validateService.emailValidator(value);
                              },
                              hintText: "Email",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                  BorderSide(color: _colors.primaryColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: _colors.primaryColor.withOpacity(0.5))),
                              prefixIcon: Icon(Icons.email),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                              validator: (value) {
                                return _validateService.pwdValidator(value!);
                              },
                              prefixIcon: Icon(Icons.lock),
                              controller: passwordController,
                              hintText: "Password",
                              obscureText: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                  BorderSide(color: _colors.primaryColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: _colors.primaryColor.withOpacity(0.5))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AppButton(
                                color: _colors.btnColor,
                                height: 45,
                                onTap: () {
                                  //login logic comes here
                                  if (_loginKey.currentState!.validate()) {

                                    Map data={
                                      "name":"John Doe",
                                      "email":emailController.text.trim(),
                                      'phone':"9048904851",
                                      'location':"Perinthalmanna"
                                    };

                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavigationPage(data: data,)), (route) => false);

                                  }
                                },
                                child: Center(
                                  child: AppText(
                                    "Login",
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        "New to shopy?",
                        color: _colors.whiteColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      AppText(
                        "Sign UP",
                        color: _colors.whiteColor,
                        fw: FontWeight.w700,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
