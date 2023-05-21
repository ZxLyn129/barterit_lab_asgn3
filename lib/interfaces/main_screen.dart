import 'package:flutter/material.dart';

import '../models/user.dart';
import 'menu.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({super.key, required this.user});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("BarterIt"),
            ),
            body: const Scaffold(),
            drawer: MenuWidget(
              user: widget.user,
            )));
  }
}
