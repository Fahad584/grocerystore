import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  String? text;
  TextEditingController myController;
  final String? Function(String?)? validator;
  CustomTextField({Key? key, required this.text, required this.validator, required this.myController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextFormField(
        controller: myController,
        validator: validator,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(color: greenColor),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: fifthColor),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: greenColor),
                borderRadius: BorderRadius.circular(10.0))),
      ),
    );
  }
}
