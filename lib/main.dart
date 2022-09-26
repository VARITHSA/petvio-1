import 'package:flutter/material.dart';
import 'package:petvio/page/home-page.dart';
import 'package:petvio/page/login-page.dart';
import 'routes.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomePage(),
      
      routes: {
        Routes.homePage :(context) => const  HomePage(),
        Routes.loginPage: ((context) => const LoginPage()),
      },
    );
  }
}