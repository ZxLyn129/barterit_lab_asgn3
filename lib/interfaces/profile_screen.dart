import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';
import 'login_screen.dart';
import 'menu.dart';
import 'resetpass_screen.dart';

class ProfileScreen extends StatefulWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final df = DateFormat('dd/MM/yyyy');
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: AppBar(title: const Text("Profile")),
            body: Center(
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Card(
                      margin: const EdgeInsets.all(12),
                      elevation: 10,
                      color: Colors.blue.shade50,
                      child: Column(children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Profile Information",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 25, 5),
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                width: 100,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.blueGrey.shade300,
                                  child: Image.asset("assets/images/user.png"),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: SizedBox(
                                          height: 35,
                                          child: Text(
                                            widget.user.name.toString(),
                                            style:
                                                const TextStyle(fontSize: 24),
                                          ),
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 2, 15, 8),
                                      child: Divider(
                                        color: Color.fromARGB(255, 13, 71, 161),
                                        height: 2,
                                        thickness: 1.3,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 25,
                                        child: Row(
                                          children: [
                                            const Icon(Icons.email),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 15, 0),
                                              child: Text(
                                                widget.user.email.toString(),
                                                style: const TextStyle(
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 25,
                                        child: Row(
                                          children: [
                                            const Icon(Icons.date_range),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 15, 0),
                                              child: Text(
                                                df.format(DateTime.parse(widget
                                                    .user.dateregister
                                                    .toString())),
                                                style: const TextStyle(
                                                    fontSize: 14),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        )
                      ]),
                    ),
                  ),
                  Flexible(
                      flex: 6,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            color: Colors.tealAccent,
                            height: 55,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 15, 5, 15),
                                  child: Text("PROFILE SETTINGS",
                                      style: GoogleFonts.mogra(
                                          textStyle: const TextStyle(
                                        fontSize: 20,
                                      ))),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: ListView(
                            padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                            shrinkWrap: true,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (content) =>
                                              const ResetPassword()));
                                },
                                child: Text("Reset Password",
                                    style: GoogleFonts.secularOne(
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200,
                                          color:
                                              Color.fromARGB(255, 2, 171, 149)),
                                    )),
                              ),
                              const Divider(
                                color: Colors.black54,
                                height: 2,
                              ),
                              MaterialButton(
                                onPressed: _logout,
                                child: Text("Logout",
                                    style: GoogleFonts.secularOne(
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200,
                                          color:
                                              Color.fromARGB(255, 2, 171, 149)),
                                    )),
                              ),
                              const Divider(
                                color: Colors.black54,
                                height: 2,
                              ),
                            ],
                          )),
                        ],
                      )),
                ],
              ),
            ),
            drawer: MenuWidget(
              user: widget.user,
            )));
  }

  void _logout() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          title: const Text(
            "Logout",
            style: TextStyle(),
          ),
          content: const Text("Are you sure?", style: TextStyle()),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(),
              ),
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setString('email', '');
                await prefs.setString('pass', '');
                await prefs.setBool('checkbox', false);

                if (!mounted) return;
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (content) => const LoginScreen()));
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
