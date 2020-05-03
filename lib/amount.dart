import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'payment.dart';

class AmountPage extends StatefulWidget {
  @override
  _AmountPage createState() => _AmountPage();
}

class _AmountPage extends State<AmountPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 950,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/amount.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 470,
              bottom: 175,
              left: 5,
              right: -5,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)
                          )
                        ]
                    ),
                  child: Container(
//                    padding: EdgeInsets.all(8.0),
//                    decoration: BoxDecoration(
//                        border: Border(bottom: BorderSide(color: Colors.grey[100]))
//                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                      ),
                    ),
                  )
                ),
              ),
            ),
            Positioned(
              top: 580,
              bottom: 130,
              left: 160,
              right: 25,
              child: OutlineButton(
                color: Colors.transparent,
//                elevation: 10.0,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                borderSide: BorderSide(
                  color: Color(0xFFF8E6C5),//Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 5, //width of the border
                ),
                child: Text("Next",style:  GoogleFonts.ebGaramond(
                  color:Color(0xFFF8E6C5),
                  fontSize: 40.0,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic
                )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => PaymentPage()
                    ),
                  );
                },
              )
            )
          ],
        )
      ),
    );

  }
}