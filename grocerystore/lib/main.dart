import 'package:flutter/material.dart';
import 'package:grocerystore/screens/beef.dart';
import 'package:grocerystore/screens/chicken.dart';
import 'package:grocerystore/screens/fruits.dart';
import 'package:grocerystore/screens/home_screen.dart';
import 'package:grocerystore/screens/login_screen.dart';
import 'package:grocerystore/screens/mutton.dart';
import 'package:grocerystore/screens/pepper.dart';
import 'package:grocerystore/screens/profile_screen.dart';
import 'package:grocerystore/screens/signup_screen.dart';
import 'package:grocerystore/screens/vegetables.dart';
import 'package:grocerystore/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        VegetablesScreen.routeName: (context) => const VegetablesScreen(),
        FruitsScreen.routeName: (context) => const FruitsScreen(),
        PepperScreen.routeName: (context) => const PepperScreen(),
        ChickenScreen.routeName: (context) => const ChickenScreen(),
        BeefScreen.routeName: (context) => const BeefScreen(),
        MuttonScreen.routeName: (context) => const MuttonScreen(),
      },
      home: const WelcomeScreen(),
    );
  }
}
