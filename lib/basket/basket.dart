import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';

import 'element_info.dart';

class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Total : 500 TND",
              textScaleFactor: 1.5,
            )
          ],
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: const Divider(color: Colors.red)),
        Expanded(
          child: ListView(
            children: [
              //  ElementInfo("assets/images/dmc5.jpg", 200),
              ElementInfo(
                  game: GameData(
                      title: "", image: "assets/images/dmc5.jpg", price: 200)),
              ElementInfo(
                  game: GameData(
                      title: "", image: "assets/images/re8.jpg", price: 200)),
              ElementInfo(
                  game: GameData(
                      title: "", image: "assets/images/nfs.jpg", price: 100))
            ],
          ),
        )
      ],
    );
  }
}
