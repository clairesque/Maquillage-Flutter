import 'dart:io';
<<<<<<< HEAD
import 'package:makeup_app/app/services/auth.dart';
import 'app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:makeup_app/app/models/user.dart';
=======
import 'package:makeup_app/services/auth.dart';
import 'package:makeup_app/screens/theme/design_course_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:makeup_app/models/user.dart';
>>>>>>> d487d450c39298c94d18bbf0812b16a1856845a6

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
<<<<<<< HEAD
  ]).then((_) => runApp(MaterialApp(home: Wrapper())));
=======
  ]).then((_) => runApp(MyApp()));
>>>>>>> d487d450c39298c94d18bbf0812b16a1856845a6
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        title: 'Flutter UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
<<<<<<< HEAD
          textTheme: AppTheme.textTheme,
          platform: TargetPlatform.android,
        ),
        //home: Search(),
=======
          textTheme: DesignCourseAppTheme.textTheme,
          platform: TargetPlatform.android,
        ),
        //home: DesignCourseHomeScreen(),
>>>>>>> d487d450c39298c94d18bbf0812b16a1856845a6
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
