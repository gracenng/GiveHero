import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'quiz.dart';
import 'login.dart';
import 'auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  String email = '';
  String password = '';
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/registration.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 350,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(18, 0, 5, 0),
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text("Create an Account",style:  GoogleFonts.ebGaramond(
                  color: Color(0xFF0000A1),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10)
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey[100]))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[500])
                            ),
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                          obscureText: true,
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,height: 60,
                child: RaisedButton(
                  color: Color(0xFF0000A1),
  //                elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                  child: Text("Begin",style:  GoogleFonts.ebGaramond(
                    color: Color(0xFFF8E6C5),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  )),
                    onPressed: () async {
                      dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) => QuizPage()
                        ),
                      );
                    }
                )
              ),
              Container(
                child: FlatButton(
                  color: Colors.transparent,
                  //                elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                  child: Text("Sign in",style:  GoogleFonts.ebGaramond(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => LoginPage()
                      ),
                    );
                  },
                ),
              )
            ],
        )
      ),)
    );
  }
}