import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  // Tambahan formKey
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InventoryApp"),
        backgroundColor: Color.fromARGB(153, 231, 236, 236),
      ),
      // Color.fromARGB( opacity, red, gren, blue)
      backgroundColor: Color.fromARGB(245, 19, 222, 124),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage('asset/image/ma.jpg'),
                width: 200,
                height: 200,
              ),
            ),
            Container(
              width: 300,
              color: Color.fromARGB(197, 220, 155, 155),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukan Nama Kamu',
                  border: OutlineInputBorder(),
                ),
                controller: inputNama,
                obscureText: false,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama wajib diisi';
                  }
                  return null;
                },
                onFieldSubmitted: (values) {
                  inputNama.text = values;
                },
              ),
            ),
            Center(
              child: Container(
                width: 300,
                color: Color.fromARGB(197, 220, 155, 155),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Masukan Password Anda",
                    border: OutlineInputBorder(),
                  ),
                  controller: inputPassword,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Password wajib diisi';
                    }
                    return null;
                  },
                  onFieldSubmitted: (values) {
                    inputPassword.text = values;
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(16)),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print(inputNama.text);
                  print(inputPassword.text);
                  Navigator.pushReplacementNamed(context, "/home");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}