import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';

class MyGameInfo extends StatelessWidget {
  final GameData game;
  const MyGameInfo({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Image.asset(game.image, width: 155, height: 58),
            ),
            Text(game.title)
          ],
        ),
      ),
    );
  }
}
