import 'package:flutter/material.dart';
import 'screen/shared/colors.dart';

class Headsup extends StatelessWidget {
  const Headsup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headup',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/gintaa-icon.png',
                    height: 58.0,
                    width: 58.0,
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    child: SingleChildScrollView(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'heads up !',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lora',
                                fontSize: 50.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Certain permissions are needed.Here’s what & why.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(height: 45.0),
                          Container(
                            height: 25.0,
                            width: 316.0,
                            child: Text(
                              '1. Your profile information: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 70.0,
                            width: 272.0,
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              'to create your profile in the system. WE DO NOT SHARE YOUR PROFILE INFORMATION WITH THIRD PARTY.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 25.0,
                            width: 316.0,
                            child: Text(
                              '2. Posting on your behalf: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 70.0,
                            width: 272.0,
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              'in some cases if you want to share your offerings in social media you can do it from the app easily. WE WILL NEVER POST ON YOUR BEHALF AUTOMATICALLY.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 25.0),
                          MaterialButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue)),
                            height: 65.0,
                            minWidth: double.maxFinite,
                            color: Colors.green,
                            onPressed: () {
                              Navigator.pushNamed(context, '/myaccount');
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
                    /**/
                  ),
                  Center(
                    child: Text(
                      'by joining you agree to our terms & policy',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Roboto',
                        color: Colors.black54,
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
