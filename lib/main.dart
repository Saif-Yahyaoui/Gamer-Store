import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/navigation/navigation_bottom.dart';
import 'package:flutter_gstore_4sim1/navigation/navigation_tabbar.dart';
import 'package:flutter_gstore_4sim1/signup.dart';
import 'my_games/bibliotheque.dart';
import 'reset_password.dart';
import 'update_user.dart';
import 'signin.dart';
import 'basket/basket.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Game Store",
      // home: Signup()
      routes: {
        "/": (context) => const Signin(),
        "/signup": (context) => const Signup(),
        "/resetpwd": (context) => const ResetPassword(),
        "/home": (context) => const NavigationBottom(),
        "/bibliotheque": (context) => const Bibliotheque(),
        "/basket": (context) => const Basket(),
        "/updateuser": (context) => const UpdateUser(),
        "/tabbar": (context) => const NavigationTabBar(),
      },
    );
  }
}
