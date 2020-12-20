import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(Sifremiunuttum());
}

class Sifremiunuttum extends StatelessWidget {
  String email;

  final degerKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: degerKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email Adresinizi Giriniz",
                    labelStyle: TextStyle(color: Colors.lightBlue),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                    color: Color(0xff536DFE),
                      child: Text("Şifre Sıfırlama Kodu Gönder"),
                      onPressed: () {
                        degerKey.currentState.save();
                        Navigator.pushNamed(context, '/sifremiunuttum');
                        if(email == "") {
                          debugPrint("$email, Lütfen bir e-posta adresi giriniz.");
                        }
                        else {
                          debugPrint("$email, Şifre sıfırlama bağlantınız e-posta adresinize gönderildi");
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
