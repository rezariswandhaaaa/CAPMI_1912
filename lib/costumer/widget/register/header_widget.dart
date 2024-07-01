import 'package:flutter/material.dart';

class HeaderRegister extends StatelessWidget {
  const HeaderRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Text("REGISTRASI AKUN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        SizedBox(
          height: 5,
        ),
        Text(
          "Daftar dan Bergabung Sekarang",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        SizedBox(height: 25)
      ],
    );
  }
}
