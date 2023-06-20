import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerystore/constants/colors.dart';

import '../widgets/info_card_screen.dart';

// our data
const url = "fahad.github.com";
const email = "fahad@gmail.com";
const phone = "+92XXXXXXXXXX"; // not real number :)
const location = "Tibba Sultan Pur";

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profileScreen';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: sixthColor,
        appBar: AppBar(
          backgroundColor: sixthColor,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: greenColor,
              )),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 60),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/drawer.png'),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Fahad Bhutta",
                style: GoogleFonts.audiowide(
                  color: greenColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: 2.5,
                ),
              ),
              const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: greenColor,
                ),
              ),
              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              InfoCard(text: url, icon: Icons.web, onPressed: () async {}),
              InfoCard(
                  text: location,
                  icon: Icons.location_city,
                  onPressed: () async {}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            ],
          ),
        ));
  }
}
