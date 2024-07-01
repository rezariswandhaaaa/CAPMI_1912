import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import untuk InputFormatters

class FormRegister extends StatefulWidget {
  const FormRegister({
    Key? key,
    required this.formkey,
    required this.etNama,
    required this.etTelepon,
    required this.etEmail,
    required this.etAlamat,
    required this.etPassword,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;
  final TextEditingController etNama;
  final TextEditingController etTelepon;
  final TextEditingController etEmail;
  final TextEditingController etAlamat;
  final TextEditingController etPassword;

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etNama,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Nama',
              labelStyle: const TextStyle(color: Colors.black),
              hintText: 'Masukkan Nama',
              prefixIcon: const Icon(Icons.account_box),
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
              if (value!.isEmpty) {
                return "Nama tidak boleh kosong";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.etEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: const TextStyle(color: Colors.black),
              hintText: 'Masukkan Email',
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
              if (value!.isEmpty) {
                return "Email tidak boleh kosong";
              }
              if (!isValidEmail(value)) {
                return "Email tidak valid";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.etTelepon,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter
                  .digitsOnly // Hanya menerima input berupa angka
            ],
            decoration: InputDecoration(
              labelText: 'Nomor telepon',
              labelStyle: const TextStyle(color: Colors.black),
              hintText: 'Masukkan Nomor',
              prefixIcon: const Icon(Icons.add_call),
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
              if (value!.isEmpty) {
                return "Nomor telepon tidak boleh kosong";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.etAlamat,
            decoration: InputDecoration(
              labelText: 'Alamat',
              labelStyle: const TextStyle(color: Colors.black),
              hintText: 'Masukkan Alamat',
              prefixIcon: const Icon(Icons.add_home_work),
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
              if (value!.isEmpty) {
                return "Alamat tidak boleh kosong";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.etPassword,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: const TextStyle(color: Colors.black),
              hintText: 'Masukkan Password',
              prefixIcon: const Icon(Icons.lock),
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
              if (value!.isEmpty) {
                return "Password tidak boleh kosong";
              }
              if (value.length < 6) {
                return "Password harus memiliki setidaknya 6 karakter";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
