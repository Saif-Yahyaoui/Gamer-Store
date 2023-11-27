import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/basket/basket.dart';
import 'package:flutter_gstore_4sim1/home/home.dart';
import 'package:flutter_gstore_4sim1/my_games/bibliotheque.dart';

class NavigationTabBar extends StatelessWidget {
  const NavigationTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: const Text("Game STORE"),
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.home), text: "Store"),
                Tab(icon: Icon(Icons.book), text: "Library"),
                Tab(icon: Icon(Icons.shopping_basket_rounded), text: "Basket"),
              ])),
          drawer: Drawer(
            child: Column(
              children: [
                AppBar(
                  title: const Text("Game Store"),
                  automaticallyImplyLeading: false,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/updateuser");
                  },
                  leading: const Icon(Icons.edit),
                  title: const Text("Update User"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  leading: const Icon(Icons.download),
                  title: const Text("Bottom Navigation"),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [Home(), Bibliotheque(), Basket()])),
    );
  }
}
