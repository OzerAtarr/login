import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/constants.dart';
import 'package:login/routes/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codejital | E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: RouteHelper.splashPage, // İlk açılacak sayfa
      onGenerateRoute: RouteHelper.generateRoute, // Route yönetimi
    );
  }
}
