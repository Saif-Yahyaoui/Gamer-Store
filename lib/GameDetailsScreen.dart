import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';

class GameDetailsScreen extends StatefulWidget {
  final GameData game;

  const GameDetailsScreen({super.key, required this.game});

  @override
  State<GameDetailsScreen> createState() => _GameDetailsScreenState();
}

class _GameDetailsScreenState extends State<GameDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.game.title)),
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                widget.game.image,
                width: 350,
                height: 250,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    widget.game.description,
                    style: const TextStyle(fontSize: 19),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "${widget.game.price}TND",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text(
                    "Buy",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
