import 'package:flutter/material.dart';

import 'gamedata.dart';

class GamesDetails extends StatefulWidget {
  final GameData game;
  const GamesDetails({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  State<GamesDetails> createState() => _GamesDetailsState();
}

class _GamesDetailsState extends State<GamesDetails> {
  late int current_quantity;

  @override
  void initState() {
    super.initState();
    current_quantity = widget.game.quantity!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.game.title),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Image.asset(widget.game.image, width: 460, height: 215)),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(widget.game.description.toString()),
          ),
          Text("${widget.game.price} TND", textScaleFactor: 3),
          Text("Copies available : ${current_quantity}"),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Buy", textScaleFactor: 2)
                ],
              ),
              onPressed: () {
                setState(() {
                  current_quantity--;
                });

                print(current_quantity);
              },
            ),
          )
        ],
      ),
    );
  }
}
