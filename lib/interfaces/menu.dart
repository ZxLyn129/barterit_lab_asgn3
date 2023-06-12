import 'package:flutter/material.dart';

import '../models/user.dart';
import 'main_screen.dart';
import 'profile_screen.dart';
import 'seller_screen.dart';

class MenuWidget extends StatefulWidget {
  final User user;
  const MenuWidget({super.key, required this.user});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late double screenHeight;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Drawer(
      width: 280,
      elevation: 10,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.primary),
            currentAccountPicture: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.tealAccent,
              child: Image.asset("assets/images/user.png"),
            ),
            accountName: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Column(
                    children: [
                      Text(
                        widget.user.name.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
            accountEmail: Text(
              widget.user.email.toString(),
              style: const TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainPage(
                            user: widget.user,
                          )));
            },
          ),
          const Divider(
            color: Colors.black54,
            height: 2,
          ),
          ListTile(
            title: const Text(
              'Selling',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SellerScreen(
                            user: widget.user,
                          )));
            },
          ),
          const Divider(
            color: Colors.black54,
            height: 2,
          ),
          ListTile(
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                            user: widget.user,
                          )));
            },
          ),
          const Divider(
            color: Colors.black54,
            height: 2,
          ),
        ],
      ),
    );
  }
}
