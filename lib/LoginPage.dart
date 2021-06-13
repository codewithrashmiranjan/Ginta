import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ginta/screen/shared/colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'VerifyPage.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  /*String mob2=new _LoginState().mob;*/

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textFieldController = TextEditingController();
  int number = null;
  String _mobnumber = "";
  http.Client client = new http.Client();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
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
                  Column(
                    children: <Widget>[
                      SizedBox(height: 71.9),
                      Text(
                        'hello',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lora',
                          fontSize: 50.0,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Lets get started with...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 16.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  /*SizedBox(height: 1.0),*/
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 79.0,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Text('+91'),
                          ),
                          Expanded(
                            child: Container(
                              width: 310,
                              height: 55.0,
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: Card(
                                color: Colors.black12,
                                child: TextField(
                                  controller: textFieldController,
                                  keyboardType: TextInputType.phone,
                                  cursorColor: white,
                                  maxLength: 10,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Mobile Number',
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      _mobnumber = value;
                                      print(_mobnumber);
                                    });
                                  },
                                  obscureText: false,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      MaterialButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.blue)),
                        height: 55.0,
                        minWidth: 317,
                        color: Colors.green,
                        onPressed: () async {
                          number = int.parse(_mobnumber);
                          print(number);
                          if (number == null) {
                            Fluttertoast.showToast(
                                msg: "Please Enter Mobile number ",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIos: 1);
                          } else {
                            Map<String, int> body = {"mobile": number};
                            Map<String, String> header = {
                              "Content-Type": "application/json"
                            };
                            http.Response response = await http.post(
                                'http://15.206.17.169:8050/gintaa/api/auth/sms-otp',
                                body: json.encode(body),
                                headers: header);
                            print(response.body);
                            if (response.statusCode == 200 && number != null) {
                              /* Navigator.pushNamed(context, '/verify');*/
                              _apidata(context);
                            } else {
                              print('APi is not working');
                              Fluttertoast.showToast(
                                  msg: "Please Enter correct Mobile number ",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIos: 1);
                            }
                          }
                        },
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(50.0, 0, 20.0, 0),
                        child: Text(
                          'OR YOUR SOCIAL PROFILE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 50.0,
                        child: Card(
                          child: GoogleButton(),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 50.0,
                        child: Card(
                          child: FacebookButton(),
                        ),
                      ),
                    ],
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

  void _apidata(BuildContext context) {
    String textToSend = textFieldController.text;
    print(textToSend + "text send-----------------");
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Verify(
            text: textToSend,
          ),
        ));
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/search.png',
                height: 25,
                width: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Center(
                child: Text(
                  "Google",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/facebook .png',
                height: 25,
                width: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Center(
                child: Text(
                  "Facebook",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
