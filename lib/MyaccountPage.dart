import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ginta/AddnewOffer.dart';
import 'package:ginta/EditDetails.dart';
import 'package:ginta/screen/shared/colors.dart';
import 'screen/shared/colors.dart';

class MyaccountPage extends StatefulWidget {
  MyaccountPage({Key key}) : super(key: key);
  @override
  MyaccountPageState createState() => MyaccountPageState();
}

class MyaccountPageState extends State<MyaccountPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    if (mediaQueryData.orientation == Orientation.landscape) {}
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myaccount',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
          appBar: new AppBar(
            title: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      size: 24.0,
                      color: Colors.white,
                    ),
                    Text(
                      'KOLKATA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "images/gintaa-icon.png",
                  color: Colors.green,
                  height: 39.82,
                  width: 40,
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 24.0,
                ),
              ],
            ),
            backgroundColor: Colors.black12,
              ),
          floatingActionButton: new FloatingActionButton(
            onPressed: (){

            },
            /* onPressed: _pushAddTodoScreen,*/
            /* tooltip: 'Increment',*/
            child: new Icon(
              Icons.add_a_photo,
              size: 38.0,
            ),
            elevation: 10.0,
            backgroundColor: Colors.black,
          ),
          bottomNavigationBar: BottomAppBar(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 28.0,
                      color: Colors.black,
                    ),
                    onPressed: (){

                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.bubble_chart,
                      size: 28.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(child: new Text('')),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.view_agenda,
                        size: 28.0, color: Colors.black),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 28.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          resizeToAvoidBottomInset: false,
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
                              /*Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'KOLKATA',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "images/gintaa-icon.png",
                                    color: Colors.green,
                                    height: 39.82,
                                    width: 40,
                                  ),
                                  Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                ],
                              ),*/
                              SizedBox(
                                height: 20.0,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25.0))),
                                child: Container(
                                  height: 55.0,
                                  width: 338.0,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Search your desire",
                                        prefixIcon: Icon(Icons.search),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0)))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50.0,
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 120.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      image: DecorationImage(
                                        image: AssetImage('images/man@3x.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(75.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 8.0,
                                            color: Colors.black)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: new Icon(
                                      Icons.mode_edit,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                                width: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    'Surajit Das',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 28.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    '+91 9231565080',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 9.0,
                                  ),
                                  Text(
                                    'Verified',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.green,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 17.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    'prabiran89@gmail.com',
                                    style: TextStyle(
                                        fontSize: 18.0, fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'Not verified',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.red,
                                        fontFamily: 'Roboto'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Container(
                                    height: 14.0,
                                    width: 197.0,
                                    child: Text(
                                      'Check your email for Verification link',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'Roboto',
                                          color: Colors.black38),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 9.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  MaterialButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(15.0),
                                        side: BorderSide(color: Colors.white)),
                                    height: 30.0,
                                    minWidth: 94,
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return EditDetails();
                                      }));
                                    },
                                    child: Text(
                                      'Edit Details',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontFamily: 'Robot',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          /* margin: EdgeInsets.fromLTRB(0, 0, 0, 100),*/
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 160.0,
                                    height: 55.0,
                                    color: Colors.white,
                                    child: Card(
                                      color: Colors.white,
                                      child: GoogleButton(),
                                    ),
                                  ),
                                  Container(
                                    width: 160.0,
                                    height: 55.0,
                                    color: Colors.white,
                                    child: Card(
                                      color: Colors.white,
                                      child: FacebookButton(),
                                    ),
                                  ),
                                ],
                              ), //Facebook & Google button
                              SizedBox(
                                height: 10.0,
                              ),
                              Divider(
                                color: Colors.black38,
                                height: 36,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 300.0,
                                    height: 100.0,
                                    child: Text(
                                      'BA - 165, Near PNB, BA Block, Sector 1, Bidhannagar, Kolkata, West Bengal 700064 ',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ), //location address
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.my_location,
                                    color: Colors.green,
                                  ), //Location
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 17.0,
                                    width: 208.0,
                                    child: TextField(
                                      decoration: InputDecoration.collapsed(
                                          hintText: 'Add new location',
                                          hintStyle: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            color: Colors.black38,
                                          )),
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      obscureText: false,
                                    ),
                                  ), // Add new location text field
                                ],
                              ), // Location Icon and Add new Location
                              Divider(
                                color: Colors.black38,
                                height: 36,
                              ),
                              SizedBox(
                                height: 48.0,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(19, 0, 200, 25),
                                child: Text(
                                  'My offers',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              Container(
                                height: 310.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0, vertical: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 5.0),
                                            child: Container(
                                              color: Colors.green,
                                              child: Card(
                                                child: Image.asset(
                                                    'images/bike.png'),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 5.0),
                                            child: Container(
                                              color: Colors.black,
                                              child: Card(
                                                child: Image.asset(
                                                    'images/laptop_set.png'),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 5.0),
                                            child: Container(
                                              color: Colors.red,
                                              child: Card(
                                                child: Image.asset(
                                                    'images/powerbank.png'),
                                              ),
                                            ),
                                          ),
                                          /*Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 5.0),
                                            child: Container(
                                              color: Colors.blue,
                                              child: Card(
                                                child: Image.asset(
                                                    'images/joker.png'),
                                              ),
                                            ),
                                          ),*/
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 36.0,
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
                                      return AddnewOffer();
                                    }));
                                  },
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      "Add New Offer",
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
                              /*  Container(
                                height: 73.0,
                                width: 327.0,
                                margin: EdgeInsets.fromLTRB(24, 0, 24, 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    FloatingActionButton(
                                        heroTag: null,
                                        elevation: 0.0,
                                        child: new Icon(
                                          Icons.home,
                                          size: 28.0,
                                          color: Colors.black,
                                        ),
                                        backgroundColor: Colors.white,
                                        onPressed: () {}),
                                    FloatingActionButton(
                                        heroTag: null,
                                        elevation: 0.0,
                                        child: new Icon(
                                          Icons.bubble_chart,
                                          size: 28.0,
                                          color: Colors.black,
                                        ),
                                        backgroundColor: Colors.white,
                                        onPressed: () {}),
                                    SizedBox(
                                      height: 73.0,
                                      width: 73.0,
                                      child: FloatingActionButton(
                                          heroTag: null,
                                          elevation: 10.0,
                                          child: new Icon(
                                            Icons.add_a_photo,
                                            size: 38.0,
                                          ),
                                          backgroundColor: Colors.black,
                                          onPressed: () {}),
                                    ),
                                    FloatingActionButton(
                                        elevation: 0.0,
                                        heroTag: null,
                                        child: new Icon(Icons.view_agenda,
                                            size: 28.0, color: Colors.black),
                                        backgroundColor: Colors.white,
                                        onPressed: () {}),
                                    FloatingActionButton(
                                        elevation: 0.0,
                                        heroTag: null,
                                        child: new Icon(
                                          Icons.account_circle,
                                          color: Colors.black,
                                          size: 28.0,
                                        ),
                                        backgroundColor: Colors.white,
                                        onPressed: () {}),
                                  ],
                                ), //Floating Action Buttons
                              )*/ //FAB
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

/*
***********************               Next classes            **************************************
*/

bool isSwitched = true;

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/search.png',
                height: 25,
                width: 25,
              ),
              SizedBox(
                width: 2,
              ),
              Center(
                child: Text(
                  "Google",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Container(
                /*height: 40.0,width: 40.0,*/
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
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
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'images/facebook .png',
                height: 25,
                width: 25,
              ),
              /*SizedBox(
                width: 2,
              ),*/
              Container(
                child: Text(
                  "Facebook",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Container(
                /*height: 40.0,width: 40.0,*/
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
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

class MyOffers extends StatefulWidget {
  MyOffers({Key key}) : super(key: key);

  @override
  _MyOffersState createState() => _MyOffersState();
}

class _MyOffersState extends State<MyOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          Container(
            width: 160.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/pro-3.jpg',
                  ),
                  ListTile(
                    title: Text('Heading'),
                    subtitle: Text('subheading'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 160.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/pro-3.jpg',
                  ),
                  ListTile(
                    title: Text('Heading'),
                    subtitle: Text('subheading'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 160.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/pro-3.jpg',
                  ),
                  ListTile(
                    title: Text('Heading'),
                    subtitle: Text('subheading'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 160.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/pro-3.jpg',
                  ),
                  ListTile(
                    title: Text('Heading'),
                    subtitle: Text('subheading'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
