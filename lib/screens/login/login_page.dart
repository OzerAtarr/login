import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/screens/login/components/login_form.dart';
import 'package:login/utils/dimensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Dimensions dimensions;

  @override
  Widget build(BuildContext context) {
    dimensions = Dimensions(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Positioned(
            top: dimensions.height100,
            right: -dimensions.height50,
            child: Container(
              width: dimensions.height100,
              height: dimensions.height100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dimensions.height50),
                color: kPrimaryColor,
              ),
            ),
          ),
          Positioned(
            top: -dimensions.height50,
            left: -dimensions.height50,
            child: Container(
              width: dimensions.height200,
              height: dimensions.height200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dimensions.height100),
                color: kPrimaryColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView( // SingleChildScrollView eklendi
              child: Column(
                children: [
                  SizedBox(height: dimensions.height100),
                  Image.asset(
                    "assets/images/logo3.png",
                    width: dimensions.width250,
                    height: dimensions.height250,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: dimensions.width * 0.7,
                      height: dimensions.height * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPrimaryColor.withOpacity(0.3),
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(dimensions.height50),
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: LoginForm(
                        size: Size(dimensions.width, dimensions.height),
                        defaultLoginSize: dimensions.defaultLoginSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}