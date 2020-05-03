import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz.dart';
import 'package:flutter/services.dart';
import 'welcome.dart';
import 'payment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GiveHero',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
*/
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
                  image: AssetImage("images/welcome1.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 503,
              bottom: 195,
              left: 70,
              right: 70,
              child: SizedBox(
                width: 300,
                height: 50,
                child: RaisedButton(
                  color: Color(0xFF0000A1),
                  elevation: 26.0,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                  child: Text("Continue",style:  GoogleFonts.ebGaramond(
                    color: Color(0xFFF8E6C5),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => WelcomePage()
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
