import 'package:flutter/material.dart';
import 'package:grocerystore/constants/colors.dart';

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  VoidCallback onPressed;

  InfoCard(
      {required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: thirdColor,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            icon,
            color: greenColor,
          ),
          title: Text(
            text,
            style: const TextStyle(
                color: greenColor,
                fontSize: 16,
                fontFamily: "Source Sans Pro"),
          ),
        ),
      ),
    );
  }
}