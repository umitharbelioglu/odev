import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {
  String userName;
  String password;

  final degerKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: degerKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image.asset(
              'images/background.jpg',
              width: 150,
              height: 150,
            ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kullanıcı Adı",
                    labelStyle: TextStyle(
                      color: Color(0xff536DFE)
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff536DFE),),
                    ),
                  ),
                  onSaved: (value) {
                    userName = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Şifre",
                    labelStyle: TextStyle(
                        color: Color(0xff536DFE),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)
                    ),
                  ),
                  onSaved: (value) {
                    password = value;
                  },
                ),
                RaisedButton(
                  child:Container(
                    alignment: Alignment.bottomCenter,
                  color: Color(0xff536DFE),
                  child: Text(
                      "GİRİŞ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  ),
                  //highlightColor: Colors.green,
                  splashColor: Colors.lightBlueAccent,
                  textColor: Colors.black,
                  onPressed: () {
                    degerKey.currentState.save();
                    debugPrint("userName : $userName , password : $password");
                    if (userName == "demo" && password == "demo") {
                      debugPrint("Başarıyla Giriş Yaptınız.");

                      Navigator.of(context).pushReplacementNamed('/anasayfa');
                    } else {
                      debugPrint(
                          "Lütfen Kullanıcı Adı ve Şifrenizi Tekrar Girin.");

                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 23,
                    ),
                    MaterialButton(
                      color: Color(0xff536DFE),
                      child: Text(
                        "Üye Ol", style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold
                      ),
                      ),
                      //highlightColor: Colors.green,
                      splashColor: Colors.lightBlueAccent,
                      textColor: Colors.black,
                      onPressed: () {
                        debugPrint("Üye olmak için ekrana yönlendiriliyorsunuz...");
                        Navigator.pushNamed(context, '/uyeol');
                      },

                    ),


                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sifremiunuttum');
                        debugPrint("Şifrenizi güncellemek için ekrana yönlendiriliyorsunuz...");
                      },
                      textColor: Colors.black,
                      color: Color(0xff536DFE),
                        child: Text(
                          'Şifremi Unuttum',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                      ),
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
