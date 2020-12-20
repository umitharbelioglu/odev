import 'package:flutter/material.dart';

class Uyeol extends StatelessWidget {
  String sifre1;
  String sifre2;
  String kullaniciadi;
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
                    labelText: ("Email"),
                    labelStyle: TextStyle(color: Color(0xff536DFE)),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ("Kullanıcı Adı"),
                    labelStyle: TextStyle(color: Color(0xff536DFE)),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    kullaniciadi = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ("Şifre"),
                    labelStyle: TextStyle(color: Color(0xff536DFE)),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    sifre1 = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ("Şifre Tekrar"),
                    labelStyle: TextStyle(color: Color(0xff536DFE)),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    sifre2 = value;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: Color(0xff536DFE),
                      child: Text("Vazgeç"),
                      onPressed: () {
                        debugPrint("Butona Tıklandı");
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text("Kaydol"),
                  color: Color(0xff536DFE),
                  onPressed: () {
                    degerKey.currentState.save();
                    if ( sifre1 == sifre2 && email != "" && kullaniciadi != "" ) {
                      debugPrint("kayıt başarı ile gerçekleşmiştir.");
                    } else {
                      Navigator.pushNamed(context, '/uyeol');
                      debugPrint("Lütfen E-mail, Kullanıcı Adı ve Şifrenizi yanlış girmediğinizden emin olun");
                    }

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
