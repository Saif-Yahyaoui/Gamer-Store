import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';

class ElementInfo extends StatelessWidget {
  final GameData game;
  const ElementInfo({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.restore_from_trash_rounded,
              size: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Image.asset(game.image, width: 155, height: 58),
            ),
            Text(
              "${game.price} TND",
              textScaleFactor: 2,
            ),
          ],
        ),
      ),
    );
  }
}
