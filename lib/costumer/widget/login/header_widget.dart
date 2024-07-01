import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        const Text(
          "WELCOME",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Delightful Dining Experience",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 25,
        ),
        Image.asset(
          'assets/images/capmi.png',
          width: 250,
          height: 250,
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}
