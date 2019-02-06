import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';


class RetailApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "创客新零售",
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: HomePage(),
        initialRoute: '/login',
        onGenerateRoute: _getRoute,
      );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {

    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );

  }

}