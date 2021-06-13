import 'package:flutter/material.dart';
import 'package:ginta/screen/shared/colors.dart';

class Verified extends StatefulWidget {
  Verified({Key key}) : super(key: key);

  @override
  _VerifiedState createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sign in',
      home: Scaffold(
        backgroundColor: bgColors,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Image.asset(
                      'images/gintaa-icon.png',
                      color: Colors.white,
                      height: 58.5,
                      width: 58.24,
                    ),
                  ),
                  SizedBox(
                    height: 120.0,
                  ),
                  Center(
                    child: Container(
                      height: 116,
                      width: 116,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/tick.png'),
                        radius: 50.0,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 37.0,
                    width: 126.0,
                    child: Text(
                      'VERIFIED',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  MaterialButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    minWidth: 90.0,
                    height: 55.0,
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, '/headsup');
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
