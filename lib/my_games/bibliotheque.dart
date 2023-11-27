import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';
import 'mygame_info.dart';

class Bibliotheque extends StatefulWidget {
  const Bibliotheque({Key? key}) : super(key: key);

  @override
  _BibliothequeState createState() => _BibliothequeState();
}

class _BibliothequeState extends State<Bibliotheque> {
  List<GameData> games = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    games.add(GameData(
        title: "Devil My Cry 5",
        image: "assets/images/dmc5.jpg",
        price: 200,
        description: "Capcom released it for PlayStation 4, Windows, and Xbox One on 8 March 2019. The game takes place five years after Devil May Cry 4 and follows a trio of warriors with demonic powers, the returning Dante, Nero, and a new protagonist named V, as they attempt to stop the Demon King Urizen from destroying the human world.",
        quantity: 3000));
    games.add(GameData(
        title: "Resident EVIL VILLAGE",
        image: "assets/images/re8.jpg",
        price: 200,
        description: "Resident Evil Village[a] is a 2021 survival horror game developed and published by Capcom. It is the sequel to Resident Evil 7: Biohazard (2017). Players control Ethan Winters, who searches for his kidnapped daughter in a village filled with mutant creatures. Village maintains survival horror elements from previous Resident Evil games, with players scavenging environments for items and managing resources. It adds more action-oriented gameplay, with higher enemy counts and a greater emphasis on combat.",
        quantity: 3000));
    games.add(GameData(
        title: "DELUXE EDITION NFS Heat",
        image: "assets/images/nfs.jpg",
        price: 100,
        description: "The Deluxe Edition release of Need for Speed: Heat is a special bundle that includes the standard game and additional bonus content. It is included as part of an Origin Access Premier subscription, with those subscribed given early access to Need for Speed: Heat on November 5, 2019.",
        quantity: 3000));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          return MyGameInfo(
              game: GameData(
                  title: games[index].title, image: games[index].image));
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisExtent: 120,
            mainAxisSpacing: 5));
  }
}
