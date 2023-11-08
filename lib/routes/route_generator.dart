import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/GameDetailsScreen.dart';
import 'package:flutter_gstore_4sim1/HomeScreen.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/Home':
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case '/GameDetails':
        return MaterialPageRoute(
          builder: (_) => GameDetailsScreen(
            game: args as GameData,
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
