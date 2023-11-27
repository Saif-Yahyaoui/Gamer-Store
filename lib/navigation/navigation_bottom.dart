import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/basket/basket.dart';
import 'package:flutter_gstore_4sim1/home/home.dart';
import 'package:flutter_gstore_4sim1/my_games/bibliotheque.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  late int current_index = 0;
  final List<Widget> interfaces = [
    const Home(),
    const Bibliotheque(),
    const Basket()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Game STORE")),
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
                Navigator.pushNamed(context, "/tabbar");
              },
              leading: const Icon(Icons.download),
              title: const Text("TabBar Navigation"),
            )
          ],
        ),
      ),
      body: interfaces[current_index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Store"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), label: "Library"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_rounded), label: "Basket"),
        ],
        currentIndex: current_index,
        onTap: (value) {
          setState(() {
            current_index = value;
          });
        },
      ),
    );
  }
}
