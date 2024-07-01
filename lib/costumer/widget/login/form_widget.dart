import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget(
      {super.key,
      required this.formkey,
      required this.etEmail,
      required this.etPassword});

  final GlobalKey<FormState> formkey;
  final TextEditingController etEmail;
  final TextEditingController etPassword;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: const TextStyle(color: Colors.black),
                hintText: "Masukkan Email",
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(106, 57, 82, 3), width: 2),
                ),
              ),
              validator: (value) {
                bool valid = RegExp(r"@").hasMatch(value!);
                if (value.isEmpty) {
                  return "Masukkan Email";
                } else if (!valid) {
                  return "harus ada @";
                }
                return null;
              },
              // autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: const TextStyle(color: Colors.black),
                hintText: "Masukkan Password",
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(106, 57, 82, 3), width: 2),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Masukkan Password";
                } else if (value.length < 6) {
                  return "Minimal 6 Karakter";
                }
                return null;
              },
            ),
          ],
        ));
  }
}
