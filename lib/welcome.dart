import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'login.dart';

class WelcomePage extends StatefulWidget {

  @override
  _WelcomePage createState() => _WelcomePage();
}
class _WelcomePage extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
              children: <Widget>[
                Container(
                  height: 950,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/welcome2.png"),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 520,
                  bottom: 190,
                  left: 70,
                  right: 70,
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: RaisedButton(
                      color: Color(0xFF0000A1),
                      elevation: 26.0,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                      child: Text("Sign Up",style:  GoogleFonts.ebGaramond(
                        color: Color(0xFFF8E6C5),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
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
                  ),
                )
              ]
          ),
        )
    );
  }
}