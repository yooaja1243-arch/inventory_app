import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invantory App"),
        backgroundColor: Color.fromARGB(131, 50, 145, 145),
      ),
      //Color.fromARGB( opacity, red, gren, blue)
      backgroundColor: Color.fromARGB(245, 19, 222, 124),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                // Dekorasi untuk TextFormField
                decoration: InputDecoration(
                  fillColor: Colors.orange,
                  hintText: 'Masukan Nama Kamu',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                // controller untuk ...
                controller: inputNama,
                // Ketika Dikirim nanti
                onFieldSubmitted: (values) {
                  // isi blablabla ...
                  inputNama.text = values;
                },
              ),
            ),
          ),

          //untuk kasih jarak antar widget
          Padding(
            padding: EdgeInsets.all(16),
          ),

          // Tombol
          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed: () {
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}