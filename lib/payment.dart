import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/payment.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
                top: 630,
                bottom: 70,
                left: 140,
                right: 20,
                child: OutlineButton(
                  color: Colors.transparent,
//                elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                  borderSide: BorderSide(
                    color: Color(0xFFF8E6C5),//Color of the border
                    style: BorderStyle.solid, //Style of the border
                    width: 5, //width of the border
                  ),
                  child: Text("Complete",style:  GoogleFonts.ebGaramond(
                      color:Color(0xFFF8E6C5),
                      fontSize: 35.0,
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
            ),
          ],
        ),
      ),
    );
  }
}
