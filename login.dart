import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InventoryApp"),
        backgroundColor: Color.fromARGB(153, 231, 236, 236),
      ),
      // Color.fromARGB( opacity, red, gren, blue)
      backgroundColor: Color.fromARGB(245, 19, 222, 124),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              // height: 300,
              color: Color.fromARGB(197, 220, 155, 155),
              child: TextField(
                // Dekorasi untuk Petunjuk Pengisian dan Garis
                decoration: InputDecoration(
                  hintText: 'Masukan Nama Kamu',
                  border: OutlineInputBorder(),
                ),
                // controller untuk
                controller: inputNama,
                // Ketika Dikirim nanti
                onSubmitted: (values) {
                  // isi blabla
                  inputNama.text = values;
                },
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Login(),
    ),
  );
}