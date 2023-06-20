import 'package:flutter/material.dart';
import 'package:grocerystore/constants/colors.dart';
import 'package:grocerystore/screens/profile_screen.dart';
import 'package:grocerystore/screens/welcome_screen.dart';

import 'home_screen.dart';

class Drawerfile extends StatefulWidget{
  const Drawerfile({super.key});

  @override
  _DrawerfileState createState() => _DrawerfileState();
}
class _DrawerfileState extends State<Drawerfile>{


  // TODO Logout Function
  logoutFunction() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "Do you want to logout?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                )),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      // Constants.preferences?.setBool("loggedIn", false);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const WelcomeScreen()));
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    child: const Text(
                      "No",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: sixthColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: sixthColor,
            ),
            accountName: Text(
              'Fahad Bhutta',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: greenColor,
              ),
            ),
            accountEmail: Text(
              'abcd@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: greenColor,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: greenColor,
              child: Image(
                image: AssetImage('assets/images/drawer.png'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home,color: greenColor,),
            title: const Text(
              'Home',
              style: TextStyle(
                color: greenColor
              ),
            ),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person, color: greenColor,),
            title: const Text(
              'Profile',
              style: TextStyle(
                  color: greenColor
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            }
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings, color: greenColor,),
            title: const Text(
              'Settings',
              style: TextStyle(
                  color: greenColor
              ),
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: greenColor,),
            title: const Text(
              'Logout',
              style: TextStyle(
                  color: greenColor
              ),
            ),
            onTap: logoutFunction,
          ),
        ],
      ),
    );
  }
}