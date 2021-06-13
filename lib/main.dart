import 'package:flutter/material.dart';
import 'package:ginta/MyaccountPage.dart';
import 'package:ginta/PostOffer.dart';
import 'HeadsupPage.dart';
import 'LoginPage.dart';
import 'VerifiedPage.dart';
import 'VerifyPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(

      title: 'Gintaa',
      theme: new ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: new MyaccountPage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        
        /*'/welcome': (BuildContext context) =>  new WelCome(),*/

        '/login': (BuildContext context) =>  new Login(),
       '/verify': (BuildContext context) => new Verify(),
        '/verified': (BuildContext context) => new Verified(),
        '/headsup': (BuildContext context) => new Headsup(),
        '/myaccount': (BuildContext context) => new MyaccountPage(),
        '/postoffer': (BuildContext context) => new PostOffer(),



      },
    );
  }

}
