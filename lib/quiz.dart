import 'amount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'amount.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPage createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {

  Container option(String header){
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF8E6C5),
          shape: BoxShape.circle,
      ),
      child: RaisedButton(
        color: Colors.white,
        elevation: 10.0,
        shape: CircleBorder(),
        splashColor: Color(0xFF0000A1),
        child: Text(header,textAlign: TextAlign.center,
          style:  GoogleFonts.ebGaramond(
          color: Color(0xFF0000A1),
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        )),
        onPressed: () {
          setState(() {

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
              Positioned( //beige background
                top: 300,
                bottom: -10,
                left: 0,
                right: 0,
                child: Container( //background
                  decoration: BoxDecoration(
                      color: Color(0xFFF8E6C5),
                      //curved edge
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),

                ),
              ),
              Positioned( //[0][0]
                  top: 270,
                  bottom: 460,
                  left: 10,
                  right: 265,
                child: Container(
                  child: option("COVID-19"),
                )
              ),
              Positioned(//[1][0]
                  top: 280,
                  bottom: 460,
                  left: 265,
                  right: 10,
                  child: Container(
                    child: option("Animal Welfare"),
                  )
              ),
              Positioned( //[2][0]
                  top: 280,
                  bottom: 460,
                  left: 137,
                  right: 137,
                  child: Container(
                    child: option("Poverty Relief"),
                  )
              ),
              Positioned( //[0][1]
                  top: 270,
                  bottom: 460,
                  left: 10,
                  right: 265,
                  child: Container(
                    child: option("Covid-19"),
                  )
              ),
              Positioned( //[0][1]
                  top: 290,
                  bottom: 220,
                  left: 10,
                  right: 265,
                  child: Container(
                    child: option("Wildlife Protection"),
                  )
              ),
              Positioned( //[0][1]
                  top: 350,
                  bottom: 20,
                  left: 10,
                  right: 265,
                  child: Container(
                    child: option("Human Rights"),
                  )
              ),
              Positioned( //[0][1]
                  top: 290,
                  bottom: 220,
                  left: 265,
                  right: 10,
                  child: Container(
                    child: option("Refugee Aid"),
                  )
              ),
              Positioned( //[0][1]
                  top: 350,
                  bottom: 20,
                  left: 265,
                  right: 10,
                  child: Container(
                    child: option("Education"),
                  )
              ),
              Positioned( //[0][1]
                  top: 350,
                  bottom: 20,
                  left: 137,
                  right: 137,
                  child: Container(
                    child: option("Climate"),
                  )
              ),
              Positioned( //[0][1]
                  top: 600,
                  bottom: 5,
                  left: 265,
                  right: 10,
                  child: Container(
                    child: option("Children's Aid"),
                  )
              ),
              Positioned( //[0][1]
                  top: 600,
                  bottom: 5,
                  left: 137,
                  right: 137,
                  child: Container(
                    child: option("World Health"),
                  )
              ),
              Positioned( //[0][1]
                  top: 290,
                  bottom: 220,
                  left: 137,
                  right: 137,
                  child: Container(
                    child: option("Women's Shelters"),
                  )
              ),
              Positioned( //[0][1]
                  top: 600,
                  bottom: 5,
                  left: 10,
                  right: 265,
                  child: Container(
                    child: option("Water and Sanitation"),
                  )
              ),              Positioned(
                top: 860,
                bottom: 20,
                left: 50,
                right: 50,
                child: RaisedButton(
                  color: Color(0xFF0000A1),
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                  child: Text("Complete",style:  GoogleFonts.ebGaramond(
                    color: Color(0xFFF8E6C5),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => AmountPage()
                      ),
                    );
                  }
                ),

              )
            ],
          ),
        )
    );
  }
}