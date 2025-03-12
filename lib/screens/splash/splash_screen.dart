import 'package:flutter/material.dart';
import 'package:login/routes/route_helper.dart';
import 'package:login/utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late Dimensions dimensions;

  @override
  void initState() {
    super.initState();

    // Animasyon kontrolcüsü: 3 saniye içinde ileri ve geri oynatılacak
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);

    controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      controller.reverse().then((_) {
        Navigator.pushReplacementNamed(context, RouteHelper.initial);
      });
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
      body: FadeTransition(
        opacity: animation,
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: dimensions.screenWidth,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
