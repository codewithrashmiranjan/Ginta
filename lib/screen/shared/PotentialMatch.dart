import 'package:flutter/material.dart';

class PotentialMatch extends StatefulWidget {
  PotentialMatch({Key key}) : super(key: key);

  @override
  _PotentialMatchState createState() => _PotentialMatchState();
}

class _PotentialMatchState extends State<PotentialMatch> {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Wrap(     
      children: <Widget>[
              Container(
                width: 350.0,
                child: Card(
                  child:Wrap(
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
                  child:Wrap(
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
                  child:Wrap(
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
                  child:Wrap(
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
                  child:Wrap(
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