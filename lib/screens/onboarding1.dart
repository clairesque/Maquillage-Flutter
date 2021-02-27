import 'package:flutter/material.dart';
import 'package:makeup_app/screens/onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: new Container(
        width: 411,
        height: 731,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 590,
                  left: 185,
                  child: Container(
                      width: 42,
                      height: 10,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(0, 0, 0, 1),
                                      border : Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        width: 1,
                                      ),
                                      borderRadius : BorderRadius.all(Radius.elliptical(10, 10)),
                                    )
                                )
                            ),Positioned(
                                top: 0,
                                left: 16,
                                child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                      border : Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        width: 1,
                                      ),
                                      borderRadius : BorderRadius.all(Radius.elliptical(10, 10)),
                                    )
                                )
                            ),Positioned(
                                top: 0,
                                left: 32,
                                child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                      border : Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        width: 1,
                                      ),
                                      borderRadius : BorderRadius.all(Radius.elliptical(10, 10)),
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 506,
                  left: 35,
                  child: Text('Find clean makeup', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 36,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 635,
                  left: 35,
                  child: Text('Skip', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      letterSpacing: 0.3799999952316284,
                      fontWeight: FontWeight.normal,
                      height: 0.96
                  ),)
              ),Positioned(
                  top: 625,
                  left: 356,
      child:
      new SizedBox(
      height: 25,
      width: 25,
      child: new IconButton(
      icon: Icon(Icons.arrow_forward_ios),
      color: Colors.black,
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Onboarding2()),
      );
    }
      ),
      )
              ),Positioned(
                  top: 69,
                  left: 117,
                  child: Container(
                      width: 224,
                      height: 301,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text('maquillage', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(22, 47, 84, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                    letterSpacing: 0.3799999952316284,
                                    fontWeight: FontWeight.normal,
                                    height: 0.8
                                ),)
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 156,
                  left: 52,
                  child: Container(
                      width: 317,
                      height: 292,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/onboard1.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
            ]
        )
    ),
    );
  }
}
