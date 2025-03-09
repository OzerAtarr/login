import 'package:flutter/material.dart';
import 'package:login/routes/route_helper.dart';
import 'package:login/utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  late Dimensions dimensions;

  @override
  void initState() {
    super.initState();

    // Bu aşamada context kullanılmamalı
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3))
      ..forward();

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    // Splash ekranı 2 saniye sonra login ekranına geçecek
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context, RouteHelper.initial); // Login ekranına geçiş
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dimensions = Dimensions(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: dimensions.screenWidth ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
