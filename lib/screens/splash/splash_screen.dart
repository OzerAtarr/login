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

    // Initialize the animation controller for fading in
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3))
      ..forward();

    // Opacity animation to make the splash screen fade in
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    // Splash screen will navigate to the login screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context, RouteHelper.initial); // Navigate to login screen
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
      backgroundColor: Colors.black, // Black background to start with
      body: FadeTransition(
        opacity: animation, // Fade-in effect
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: dimensions.screenWidth,
          ),
        ),
      ),
    );
  }
}

