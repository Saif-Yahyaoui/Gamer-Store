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
      body: Column(children: [
        Text(widget.game.title),
        Image.asset(
          widget.game.image,
          width: 180,
          height: 180,
        ),
      ]),
    );
  }
}
