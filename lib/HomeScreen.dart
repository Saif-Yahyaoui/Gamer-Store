import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/game_info.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("G Store ESPRIT")),
          body: SingleChildScrollView(
            child: Column(
              children: [
                GameInfo(
                    game: GameData(
                        title: "Devil My Cry 5",
                        image: "assets/images/dmc5.jpg",
                        price: 300)),
                GameInfo(
                    game: GameData(
                        title: "Resident EVIL VILLAGE",
                        image: "assets/images/re8.jpg",
                        price: 300)),
                GameInfo(
                    game: GameData(
                        title: "Red Dead Redemption II",
                        image: "assets/images/rdr2.jpg",
                        price: 300)),
                GameInfo(
                    game: GameData(
                        title: "MINECRAFT",
                        image: "assets/images/minecraft.jpg",
                        price: 300)),
                GameInfo(
                    game: GameData(
                        title: "FIFA 22",
                        image: "assets/images/fifa.jpg",
                        price: 300)),
                GameInfo(
                    game: GameData(
                        title: "DELUXE EDITION NFS Heat",
                        image: "assets/images/nfs.jpg",
                        price: 300))
              ],
            ),
          ));
  }
}
