import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ginta/LoginPage.dart';
import 'package:ginta/screen/shared/colors.dart';
import 'package:http/http.dart' as http;

class Verify extends StatefulWidget {
  String text;
  Verify({Key key, this.text}) : super(key: key);
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  String _otp1;
  int _mobilenumber = 16;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sign in',
      home: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
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
                SizedBox(
                  height: 71.3,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 64.0,
                      width: 243.0,
                      child: Text(
                        'excellent !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          fontFamily: 'Lora',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 230,
                      height: 19,
                      child: Text(
                        'Please verify the OTP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          fontSize: 16.0,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 93.0),
                Card(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    decoration: InputDecoration(hintText: 'Enter OTP'),
                    onChanged: (value) {
                      setState(() {
                        _otp1 = value;
                      });
                    },
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 33.0),
                MaterialButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue)),
                  height: 65.0,
                  minWidth: double.maxFinite,
                  color: Colors.green,
                  onPressed: () async {
                    print(_otp1);
                    print(_mobilenumber);
                    _mobilenumber = int.parse(widget.text);
                    print(_mobilenumber);

                    Map<String, int> body = {
                      "mobile": _mobilenumber,
                      "otp": int.parse(_otp1),
                    };
                    Map<String, String> header = {
                      "Content-Type": "application/json"
                    };
                    http.Response response = await http.post(
                        'http://15.206.17.169:8050/gintaa/api/auth/verify-otp',
                        body: json.encode(body),
                        headers: header);
                    print(_otp1);
                    print(response.body);
                    if (response.statusCode == 200) {
                      Navigator.pushNamed(context, '/verified');
                    } else {
                      print(_otp1);
                      Fluttertoast.showToast(
                          msg: "Invalid otp",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIos: 1);
                    }
                  },
                  child: Text(
                    "Verifying...",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 298.0,
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
    );
  }
}
