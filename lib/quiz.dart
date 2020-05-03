
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPage createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {
  Container option(String header){
    Color buttonColor = Colors.white;
    return Container(
      width: 400,
      height: 50,
      child: RaisedButton(
        color: buttonColor,
        elevation: 26.0,
        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0)),
        child: Text(header,style:  GoogleFonts.ebGaramond(
          color: Color(0xFF0000A1),
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        )),
        onPressed: () {
          setState(() {
            buttonColor = Color(0xFFF8E6C5);
          });
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    Color buttonColor = Colors.white;
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: 950,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/quiz.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ //button list


                ],
              )
            ],
          ),
        )
    );
  }
}