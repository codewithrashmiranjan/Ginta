import 'package:flutter/material.dart';
import 'package:ginta/screen/shared/PotentialMatch.dart';
import 'package:ginta/screen/shared/colors.dart';

class PostOffer extends StatefulWidget {
  PostOffer({Key key}) : super(key: key);
  @override
  PostOfferState createState() => PostOfferState();
}

class PostOfferState extends State<PostOffer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'offer details',
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
                              ),
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
                                height: 45.0,
                              ),
                              Text(
                                'Congratulations! ',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Your offer is live now',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                height: 33.0,
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 316.0,
                                    width: 316.0,
                                    child: Card(
                                      child: Image.asset('images/hunk.png'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 18,
                                width: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    'Hero honda shine',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
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
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Container(
                                    width: 258.0,
                                    child: Text(
                                      'www.gintaa.com/1254632/cyclebhb2019',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboto',
                                        color: Colors.green,
                                      ),
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
                                  Container(
                                    width: 316.0,
                                    height: 79.0,
                                    child: Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                      's standard dummy text ever since the 1500s...',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20.0,
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 32.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'SHARE YOUR OFFER.',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 31.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 152.0,
                                    height: 55.0,
                                    color: Colors.white,
                                    child: Card(
                                      color: Colors.white,
                                      child: GoogleButton(),
                                    ),
                                  ),
                                  Container(
                                    width: 152.0,
                                    height: 55.0,
                                    color: Colors.white,
                                    child: Card(
                                      color: Colors.white,
                                      child: FacebookButton(),
                                    ),
                                  ),
                                ],
                              ), //WhatsApp & Pinterest
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 152.0,
                                    height: 55.0,
                                    color: Colors.white,
                                    child: Card(
                                      color: Colors.white,
                                      child: WhatsApp(),
                                    ),
                                  ),
                                  Container(
                                    width: 152.0,
                                    height: 55.0,
                                    color: Colors.white,
                                    child: Card(
                                      color: Colors.white,
                                      child: Pinterest(),
                                    ),
                                  ),
                                ],
                              ), //Facebook & Google button
                              SizedBox(
                                height: 42.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'YOUR POTENTIAL MATCH',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                ],
                              ),// Your potential match
                              SizedBox(
                                height: 48.0,
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 36.0,
                              ),

                              SizedBox(
                                height: 63.0,
                              ),
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
              /*Container(
                */ /*height: 40.0,width: 40.0,*/ /*
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
              ),*/
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
              SizedBox(
                width: 2,
              ),
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
              /* Container(
                */ /*height: 40.0,width: 40.0,*/ /*
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
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key key}) : super(key: key);

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
                'images/whatsapp.png',
                height: 25,
                width: 25,
              ),
              SizedBox(
                width: 2,
              ),
              Center(
                child: Text(
                  "Whatsapp",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              /*Container(
                */ /*height: 40.0,width: 40.0,*/ /*
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
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class Pinterest extends StatelessWidget {
  const Pinterest({Key key}) : super(key: key);

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
                'images/pinterest.png',
                height: 25,
                width: 25,
              ),
              SizedBox(
                width: 2,
              ),
              Center(
                child: Text(
                  "Pinterest",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              /*Container(
                */ /*height: 40.0,width: 40.0,*/ /*
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
              ),*/
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
    path.lineTo(0.0, size.height / 4.5);
    path.lineTo(size.width + 536, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

/* appBar: AppBar(
          title: Text("Gintaa"),
          actions: <Widget>[
            Image.asset(
              'assets/images/gintaa-icon.png',
              height: 30.0,
              width: 30.0,
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, '/upnote');
              },
            ),
          ],
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 350.0,
        ),
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0)))),
                ),
                Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Your offer is live now ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
                Container(
                  constraints: BoxConstraints.expand(height: 300),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/pro-3.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Hero honda shine',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'www.gintaa.com/1254632/cyclebhb2019',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Share your offer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                ),
                RaisedButton.icon(
                  color: Colors.red,
                  icon: Icon(Icons.add_a_photo),
                  label: Text('Google'),
                  onPressed: () {},
                ),
                RaisedButton.icon(
                  color: Colors.red,
                  icon: Icon(Icons.add_a_photo),
                  label: Text('Facebook'),
                  onPressed: () {},
                ),
                RaisedButton.icon(
                  color: Colors.red,
                  icon: Icon(Icons.add_a_photo),
                  label: Text('whatsapp'),
                  onPressed: () {},
                ),
                RaisedButton.icon(
                  color: Colors.red,
                  icon: Icon(Icons.add_a_photo),
                  label: Text('pinterest'),
                  onPressed: () {},
                ),
                Text(
                  'your Potential match',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
                PotentialMatch(),
              ],
            ),
          ),
        ),*/
