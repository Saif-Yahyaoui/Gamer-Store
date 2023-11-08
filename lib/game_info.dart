import 'package:flutter/material.dart';

import 'package:flutter_gstore_4sim1/gamedata.dart';

class GameInfo extends StatelessWidget {
  GameData game;

  GameInfo({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: InkWell(
        onTap: () =>
            Navigator.pushNamed(context, "/GameDetails", arguments: game),
        child: Card(
          child: Row(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Image.asset(
                game.image,
                width: 180,
                height: 180,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(game.title), Text("${game.price}TND")],
            )
          ]),
        ),
      ),
    );
  }
}
