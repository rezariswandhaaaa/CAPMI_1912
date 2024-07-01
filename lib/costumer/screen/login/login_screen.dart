import 'package:capmi1912/costumer/screen/home/home_screen.dart';
import 'package:capmi1912/costumer/screen/register/register_screen.dart';
import 'package:capmi1912/costumer/widget/login/footer_widget.dart';
import 'package:capmi1912/costumer/widget/login/form_widget.dart';
import 'package:capmi1912/costumer/widget/login/header_widget.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var pass = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderWidget(),
                FormWidget(
                  etEmail: email,
                  etPassword: pass,
                  formkey: formkey,
                ),
                FooterWidget(
                  onPressedLogin: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                          (route) => false);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Login Berhasil")));
                    }
                  },
                  onPressedRegister: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistrasiScreen(),
                        ),
                        (route) => false);
                  },
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
