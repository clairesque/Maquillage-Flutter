import 'package:makeup_app/models/user.dart';
import 'package:makeup_app/screens/authenticate/authenticate.dart';
import 'package:makeup_app/screens/splash_screen.dart';
import 'package:makeup_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final user = Provider.of<User>(context);
   // print(user);

    // return either the Home or Authenticate widget
   // if (user == null) {
      return Splash();
      //return Authenticate();
   // } else {
      return Splash();
      //return Home();
  //  }
  }
}
