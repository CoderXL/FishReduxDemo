import 'package:fish_redux/fish_redux.dart';
import 'package:fishreduxdemo/page.dart';
import 'package:flutter/material.dart' hide Page ;

Widget createApp() {
  final PageRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'page': CounterFishReduxPage(),
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('page', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}