import 'package:flutter/material.dart';
import 'dart:async';
import 'package:makeup_app/screens/onboarding1.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      // 5s over, navigate to a new page
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Onboarding1()));
    });

    return Material(
        type: MaterialType.transparency,
        child: new Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: Color.fromRGBO(182, 224, 238, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 335,
              left: 120,
              child: Container(
                  width: 224,
                  height: 327,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 26,
                        left: 0,
                        child: Text(
                          'maquillage',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(22, 47, 84, 1),
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              letterSpacing: 0.3799999952316284,
                              fontWeight: FontWeight.normal,
                              height: 0.8),
                        ))
                  ]))),
        ])),
    );


  }
}
