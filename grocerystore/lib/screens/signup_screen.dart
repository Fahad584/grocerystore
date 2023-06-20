import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../widgets/customtextfield.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signUpScreen';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  // TODO TextEditingControllers
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // TODO Form Key
  final _formKey = GlobalKey<FormState>();

  // TODO Email Validator Regex
  RegExp regExpEmail = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\'
      r'[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)'
      r'+[a-zA-Z]{2,}))$');

  // TODO Password Validation Regex
  RegExp regexPassword =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sixthColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40.0),
                    alignment: Alignment.center,
                    child: Text(
                      "FBapp",
                      style: GoogleFonts.audiowide(
                          fontSize: 38.0,
                          color: greenColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 20.0),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Sign Up to use this app and to order",
                              style: GoogleFonts.roboto(
                                  color: Colors.black87, fontSize: 12.0)),
                          TextSpan(
                              text: "\nthe groceries online",
                              style: GoogleFonts.roboto(
                                  color: Colors.black87, fontSize: 12.0))
                        ]),
                      )),
                  Container(
                    height: 40,
                    width: 270,
                    margin: const EdgeInsets.only(top: 40.0),
                    decoration: BoxDecoration(
                        color: facebookLogoColor,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0, 0.1),
                            blurRadius: 10.0,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          FontAwesomeIcons.facebook,
                          color: thirdColor,
                        ),
                        Text(
                          "Log in with Facebook",
                          style: GoogleFonts.openSans(
                              color: thirdColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 140.0,
                          child: Divider(
                            color: greenColor,
                            thickness: 1.0,
                          ),
                        ),
                        Text("OR",
                            style: GoogleFonts.roboto(
                                color: Colors.black87,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w700)),
                        const SizedBox(
                          width: 140.0,
                          child: Divider(
                            color: greenColor,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  CustomTextField(
                    myController: emailController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Field is required";
                      }else if(!regExpEmail.hasMatch(value)){
                        return "Please enter valid email";
                      }else{
                        return null;
                      }
                    },
                    text: "Enter your email",
                  ),
                  const SizedBox(height: 10.0),
                  CustomTextField(
                    myController: fullNameController,
                      validator: (String? value){
                        if(value!.isEmpty){
                          return "Field is required";
                        }else{
                          return null;
                        }
                      },
                      text: "Enter your fullname"
                  ),
                  const SizedBox(height: 10.0),
                  CustomTextField(
                    myController: usernameController,
                      validator: (String? value){
                        if(value!.isEmpty){
                          return "Field is required";
                        }else{
                          return null;
                        }
                      },
                      text: "Enter your username"
                  ),
                  const SizedBox(height: 10.0),
                  CustomTextField(
                    myController: passwordController,
                      validator: (String? value){
                        if (value!.isEmpty) {
                          return 'Please enter password';
                        }else if(!regexPassword.hasMatch(value)){
                          return 'Enter valid password';
                        }else{
                          return null;
                        }
                      },
                      text: "Enter your password"
                  ),
                  const SizedBox(
                    height: 19.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      print(_formKey.currentState!.validate());
                      if(_formKey.currentState!.validate()){
                        print("Successful");
                      }else{
                        print("Failed");
                      }
                    },
                    splashColor: secondColor,
                    hoverColor: firstColor,
                    minWidth: 180,
                    color: greenColor,
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.oswald(color: secondColor, fontSize: 15.0),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Divider(
                      thickness: 2.5,
                      color: greenColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    hoverColor: firstColor,
                    child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 20.0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Have an account?",
                                style: GoogleFonts.roboto(
                                    color: Colors.black87, fontSize: 15.0)),
                            const WidgetSpan(
                                child: SizedBox(
                                  width: 5.0,
                                )),
                            TextSpan(
                                text: "Log in",
                                style: GoogleFonts.roboto(
                                    color: greenColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0))
                          ]),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
