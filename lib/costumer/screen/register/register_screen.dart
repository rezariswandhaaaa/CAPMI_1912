import 'package:capmi1912/costumer/screen/home/home_screen.dart';
import 'package:capmi1912/costumer/screen/login/login_screen.dart';
import 'package:capmi1912/costumer/widget/register/footer_widget.dart';
import 'package:capmi1912/costumer/widget/register/form_widget.dart';
import 'package:capmi1912/costumer/widget/register/header_widget.dart';
import 'package:flutter/material.dart';

class RegistrasiScreen extends StatelessWidget {
  const RegistrasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var telp = TextEditingController();
    var email = TextEditingController();
    var password = TextEditingController();
    var almat = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderRegister(),
                FormRegister(
                    formkey: formkey,
                    etNama: nama,
                    etTelepon: telp,
                    etEmail: email,
                    etAlamat: almat,
                    etPassword: password),
                FooterRegister(
                  onPressedToRegister: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                          (route) => false);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Daftar Berhasil")));
                    }
                  },
                  onPressedBackToLogin: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
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
