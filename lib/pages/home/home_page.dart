import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const id = "/home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color.fromRGBO(88, 74, 228, 1),
    );
  }
}
