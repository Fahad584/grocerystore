import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerystore/constants/colors.dart';
import 'package:grocerystore/screens/beef.dart';
import 'package:grocerystore/screens/chicken.dart';
import 'package:grocerystore/screens/fruits.dart';
import 'package:grocerystore/screens/mutton.dart';
import 'package:grocerystore/screens/mydrawer_screen.dart';
import 'package:grocerystore/screens/pepper.dart';
import 'package:grocerystore/screens/vegetables.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: sixthColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: sixthColor,
          iconTheme: const IconThemeData(color: darkJungleGreenColor),
          title: const Text(
            '',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: const Drawerfile(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25.0,),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.acme(
                      color: greenColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                  child: TextFormField(
                    style: const TextStyle(color: darkJungleGreenColor),
                    decoration: InputDecoration(
                        fillColor: thirdColor,
                        filled: true,
                        hintText: "Search for a product",
                        hintStyle: TextStyle(
                            color: darkJungleGreenColor.withOpacity(0.5)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: greenColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide:
                                const BorderSide(color: darkJungleGreenColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(color: firstColor))),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Standard Products",
                    style: GoogleFonts.abel(
                      color: darkJungleGreenColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, FruitsScreen.routeName);
                          },
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: greenColor),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  "assets/images/fruits.png",
                                  height: 75,
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Fruits",
                                  style: TextStyle(
                                      color: greenColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Fresh Fruits every day",
                                  style: TextStyle(
                                    color: darkJungleGreenColor,
                                    fontSize: 13,),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 6.0,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, VegetablesScreen.routeName);
                          },
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: greenColor),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  "assets/images/vege.png",
                                  height: 75,
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Vegetables",
                                  style: TextStyle(
                                      color: greenColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Fresh Vegetables\nevery day",
                                  style: TextStyle(
                                    color: darkJungleGreenColor,
                                    fontSize: 13,),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 6.0,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, PepperScreen.routeName);
                          },
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: greenColor),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  "assets/images/pepper.png",
                                  height: 75,
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Pepper",
                                  style: TextStyle(
                                      color: greenColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Fresh Peppers every day",
                                  style: TextStyle(
                                    color: darkJungleGreenColor,
                                    fontSize: 13,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Animal Products",
                    style: GoogleFonts.abel(
                        color: darkJungleGreenColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, ChickenScreen.routeName);
                          },
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: greenColor),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  "assets/images/chicken.png",
                                  height: 75,
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Chicken",
                                  style: TextStyle(
                                      color: greenColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Fresh chicken every day",
                                  style: TextStyle(
                                    color: darkJungleGreenColor,
                                    fontSize: 13,),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 6.0,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, BeefScreen.routeName);
                          },
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: greenColor),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  "assets/images/beaf.png",
                                  height: 75,
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Beaf",
                                  style: TextStyle(
                                      color: greenColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Fresh beaf every day",
                                  style: TextStyle(
                                    color: darkJungleGreenColor,
                                    fontSize: 13,),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 6.0,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, MuttonScreen.routeName);
                          },
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: greenColor),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  "assets/images/mutton.png",
                                  height: 75,
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Mutton",
                                  style: TextStyle(
                                      color: greenColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 10.0,),
                                const Text(
                                  "Fresh mutton every day",
                                  style: TextStyle(
                                    color: darkJungleGreenColor,
                                    fontSize: 13,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
