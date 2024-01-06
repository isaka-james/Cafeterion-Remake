// ignore_for_file: prefer_const_constructors

//import 'package:cafeterion/pages/home/individualitem.dart';
import 'package:cafeterion/pages/logins/introscreen.dart';
import 'package:cafeterion/pages/menu/menu.dart';
import 'package:cafeterion/pages/offers/offers.dart';
import 'package:cafeterion/pages/orderItem/individualItem.dart';
import 'package:cafeterion/pages/orders/myorders.dart';
import 'package:cafeterion/pages/profile/profile.dart';
import 'package:cafeterion/pages/search/result.dart';
import 'package:flutter/material.dart';
import 'const/colors.dart';

import 'package:cafeterion/pages/logins/loginpage.dart';
import 'package:cafeterion/pages/logins/createpage.dart';
import 'package:cafeterion/pages/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
      ),
      routes: {
        '/login': (context) => LoginPage(),
        '/createAccount': (context) => CreateAccountPage(),
        '/intro':(context) => IntroScreen(),
        '/home': (context) => HomePage(),
        '/orderItem': (context) => IndividualItem(),
        '/places': (context) => MenuScreen(),
        '/profile': (context) => ProfileScreen(),
        '/offer': (context) => OfferScreen(), // used for categories also
        '/result':(context) => ResultPage(),
        '/myorders': (context) => MyOrderScreen(),
      },
    );
  }
}
