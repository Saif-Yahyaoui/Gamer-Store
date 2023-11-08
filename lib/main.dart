import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/routes/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Home',
      onGenerateRoute: RouteGenerator.generateRoute,
      title: "Gamer Store ESPRIT",
    );
  }
}
