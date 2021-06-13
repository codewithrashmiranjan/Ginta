import 'package:flutter/material.dart';
import 'package:ginta/screen/shared/colors.dart';

class OtpVerified extends StatelessWidget {
  const OtpVerified({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              ClipPath(
                child: Container(color: Colors.black54),
                clipper: getClipper(),
              ),
              SizedBox(height: 20.0),
              Positioned(
                width: 350.0,
                height: 101.0,
                top: MediaQuery.of(context).size.height / 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[],
                ),
              ),
              ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black12,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 18.0,
                            ),
                            Center(
                              child: Row(
                                /* mainAxisSize: MainAxisSize.max,*/
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Container(
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.arrow_back_ios,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context, false),
                                        ),
                                      ),
                                      Text(
                                        'Back',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.edit,
                                    color: Colors.red,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 54.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              height: 50.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 176.0,
                                  child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Name',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            Row(
                              /* mainAxisSize: MainAxisSize.max,*/
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 36.0,
                                    ),
                                    Text(
                                      '+91',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black26),
                                    ),
                                    SizedBox(
                                      width: 14.0,
                                    ),
                                    Container(
                                      width: 170.0,
                                      child: TextField(
                                        keyboardType: TextInputType.phone,
                                        cursorColor: white,
                                        maxLength: 10,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Number',
                                          fillColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    /*Container(
                                      child: RaisedButton(
                                        child: Text(
                                          'GET OTP',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) {
                                                return ;
                                              }));
                                        },
                                      ),

                                      *//*Text(
                                    'GET OTP',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.green,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold),
                                  ),*//*
                                    ),*/
                                  ],
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  child: RaisedButton(
                                    child: Text(
                                      'Verified',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                     /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ;
                                      }));*/
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 176.0,
                                  child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 252.0,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(19.0, 0, 19.0, 39.0),
                              child: MaterialButton(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                ),
                                height: 55.0,
                                minWidth: 317,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/myaccount');
                                },
                                color: Colors.green,
                                child: Center(
                                  child: Text(
                                    "Save Details",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ), //FAB
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 4.0);
    path.lineTo(size.width + 785, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

/*appBar: AppBar(
          title: Text("back"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          actions: <Widget>[
            Icon(Icons.settings),
          ],
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 350.0,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(
                'Surajit Das',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.green,
                ),
              ),
              Text(
                '9180 Verified',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.green,
                ),
              ),
              Text(
                'prabiran89@gmail.com ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.green,
                ),
              ),
              RaisedButton.icon(
                color: Colors.red,
                icon: Icon(Icons.add_a_photo),
                label: Text('Save Details'),
                onPressed: () {},
              ),
            ],
          ),
        ),*/
