import 'package:coding_updates/screens/sidebar.dart';
import 'package:coding_updates/screens/user_screen.dart';
import 'package:coding_updates/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff004a7c),
            elevation: 4,
          )),
      initialRoute: "/",
      routes: {
        "/": (context) => UserProfile(),
        "/navDrawer": (context) => NavDrawer(),
      },
    );
  }
}
