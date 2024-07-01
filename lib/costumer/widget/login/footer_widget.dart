import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget(
      {super.key,
      required this.onPressedLogin,
      required this.onPressedRegister});

  final VoidCallback onPressedLogin;
  final VoidCallback onPressedRegister;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 35,
        ),
        ElevatedButton(
          onPressed: onPressedLogin,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(106, 57, 82, 3),
          ),
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              // Add Flexible widget
              child: Text("Belum Punya Akun? Silahkan"),
            ),
            TextButton(
              onPressed: onPressedRegister,
              child: const Text(
                "Register",
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
