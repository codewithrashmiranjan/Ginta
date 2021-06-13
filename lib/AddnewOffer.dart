import 'package:flutter/material.dart';
import 'package:ginta/screen/shared/colors.dart';

import 'PostOffer.dart';

class AddnewOffer extends StatefulWidget {
  const AddnewOffer({Key key}) : super(key: key);
  @override
  _AddnewOfferState createState() => _AddnewOfferState();
}

class _AddnewOfferState extends State<AddnewOffer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'add new offer',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                          size: 24.0,
                                          color: Colors.white,
                                        ),
                                        onPressed: () => Navigator.pop(context, false),
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
                                ],
                              ),
                            ),
                            /*SizedBox(
                              height: 20.0,
                            ),*/
                            SizedBox(
                              height: 75.0,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'ADD NEW OFFER',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 22.0,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 17.0,
                                ),
                                Container(
                                  height: 243.0,
                                  width: 243.0,
                                  child: Card(child: Addphoto()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        /* margin: EdgeInsets.fromLTRB(0, 0, 0, 100),*/
                        child: Container(
                          margin: EdgeInsets.fromLTRB(22.0, 0, 0, 0),
                          child: Column(
                            /*mainAxisAlignment: MainAxisAlignment.start,*/
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              //Facebook & Google button
                              SizedBox(
                                height: 52.0,
                              ),
                              TextField(
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Item/Offer name',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    )),
                                onChanged: (value) {
                                  setState(() {});
                                },
                                obscureText: false,
                              ), //TextField of Item/Offer name
                              Divider(
                                color: Colors.black,
                                /*height: 36,*/
                              ),
                              TextField(
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Description',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    )),
                                onChanged: (value) {
                                  setState(() {});
                                },
                                obscureText: false,
                              ), // Description TextField
                              Divider(
                                color: Colors.black,
                                /*height: 36,*/
                              ),
                              SizedBox(
                                height: 41.0,
                              ),

                              Text(
                                'Select Tags',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black26),
                              ),
                              SizedBox(
                                height: 35.0,
                              ),
                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        height: 44.0,
                                        width: 80.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Used Car',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 44.0,
                                        width: 129.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Motorcycles',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 44.0,
                                        width: 90.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Scooters',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        height: 44.0,
                                        width: 120.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Mobile Phones',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 44.0,
                                        width: 189.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Houses & Apartments',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        height: 44.0,
                                        width: 120.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Scooters',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 44.0,
                                        width: 189.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Commercial Vehicles',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        height: 44.0,
                                        width: 120.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Scooters',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 44.0,
                                        width: 189.0,
                                        child: Card(
                                          color: Colors.white30,
                                          child: Text(
                                            'Commercial Vehicles',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 31.0,
                              ),

                              Text(
                                'Condition ( if item )',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  fontFamily: 'Roboto',
                                  color: Colors.black26,
                                ),
                              ),

                              SizedBox(
                                height: 25.0,
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Radio(
                                        value: 1,
                                      ),
                                      Text(
                                        'New',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Radio(
                                        value: 2,
                                      ),
                                      Text(
                                        'Used',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Radio(
                                        value: 3,
                                      ),
                                      Text(
                                        'Not an Item',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Divider(
                                color: Colors.black38,
                                height: 36,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.my_location,
                                    color: Colors.green,
                                    size: 24.0,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    'Change Location',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black26,
                                        fontFamily: 'Roboto'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              Text(
                                '165, BA Block, Sector 1, Bidhannagar, Kolkata',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              Divider(
                                color: Colors.black38,
                                height: 36,
                              ),
                              SizedBox(
                                height: 24.0,
                              ),

                              Text(
                                'Barter with',
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontFamily: 'Roboto',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 26.0,
                              ),

                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Radio(value: 1,),
                                          Text(
                                            'Anything',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Radio(value: 2,),
                                          Text(
                                            'Item',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Radio(value: 3,),
                                          Text(
                                            'Service',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Radio(value: 4,),
                                          Text(
                                            'Money',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 123.0,
                                    width: 335.0,
                                    child: Card(
                                        child: TextField(
                                      decoration: InputDecoration.collapsed(
                                          hintText:
                                              'Specify what you are looking for',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                          )),
                                    )
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 54.0,
                              ),

                              Container(
                                margin: EdgeInsets.fromLTRB(19.0, 0, 19.0, 0),
                                child: MaterialButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(15.0),
                                      side: BorderSide(color: Colors.blue)),
                                  height: 55.0,
                                  minWidth: 317,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return PostOffer();
                                    }));
                                  },
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      "Post Offer",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 63.0,
                              ),
                              //FAB
                            ],
                          ),
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
    path.lineTo(0.0, size.height / 2.0);
    path.lineTo(size.width + 906, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Addphoto extends StatelessWidget {
  const Addphoto({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 69.34,
            ),
            Container(
              child: Icon(
                Icons.add_a_photo,
                size: 74.0,
              ),
            ),
            SizedBox(
              height: 51.22,
            ),
            Text(
              'Click to upload',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

/*appBar: AppBar(
          title: Text("back"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 350.0,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(
                'Add New Offer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.green,
                ),
              ),
              RaisedButton.icon(
                color: Colors.red,
                icon: Icon(Icons.add_a_photo),
                label: Text('Click to Upload'),
                onPressed: () {},
              ),

              /* OfferForm(),*/

              RaisedButton(
                child: Text('post Offer'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PostOffer();
                  }));
                },
              ),
            ],
          ),
        ),*/
