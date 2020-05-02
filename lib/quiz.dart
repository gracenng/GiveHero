import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPage createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0000A1) ,
          title: Text("GiveHero",
            style: GoogleFonts.ebGaramond(
            color: Color(0xFFF8E6C5),
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          )),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(50, 80, 50, 10),
                  child: Text("Choose from the list below 4 charitable causes that you care most about.",
                    style: GoogleFonts.ebGaramond(
                      color: Color(0xFF0000A1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                    )
                ),
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