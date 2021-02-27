import 'package:flutter/material.dart';
import 'package:makeup_app/screens/onboarding2.dart';

class Onboarding3 extends StatelessWidget {
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
                    top: 565,
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
                                  left: 32,
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
                              ),
                            ]
                        )
                    )
                ),Positioned(
                    top: 460,
                    left: 75,
                    child: Text('Based on your', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 36,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                ),Positioned(
                    top: 500,
                    left: 120,
                    child: Text('skin type', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 36,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                ),
                Positioned(
                    top: 600,
                    left: 145,
                    child: Container(
                        child: MaterialButton(
                          onPressed: () {
                            debugPrint('I am a material button');
                          },
                          shape: const StadiumBorder(),
                          textColor: Colors.black,
                          color: Color.fromRGBO(38, 56, 102, 1),
                          splashColor: Colors.indigo[900],
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.white,
                          child: Text('Get Started', style: TextStyle(
                          color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                        ),),
                        ),
                    )
                ),
            Positioned(
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
                              image: AssetImage('assets/images/onboard3.png'),
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
