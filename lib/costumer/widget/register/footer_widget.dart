import 'package:flutter/material.dart';

class FooterRegister extends StatelessWidget {
  const FooterRegister(
      {super.key,
      required this.onPressedBackToLogin,
      required this.onPressedToRegister});

  final VoidCallback onPressedBackToLogin;
  final VoidCallback onPressedToRegister;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
            onPressed: onPressedToRegister,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(106, 57, 82, 3),
            ),
            child: const Text(
              "Daftar Sekarang",
              style: TextStyle(color: Colors.white),
            )),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              // Add Flexible widget
              child: Text("Sudah Punya Akun? Silahkan"),
            ),
            TextButton(
              onPressed: onPressedBackToLogin,
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Color.fromARGB(164, 41, 58, 5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
