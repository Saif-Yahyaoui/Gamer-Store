import 'package:flutter/material.dart';
import 'package:flutter_gstore_4sim1/game_info.dart';
import 'package:flutter_gstore_4sim1/gamedata.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Gamer Store ESPRIT")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GameInfo(
                  game: GameData(
                      title: "Devil My Cry 5",
                      image: "assets/images/dmc5.jpg",
                      price: 300,
                      description:
                          "Capcom released it for PlayStation 4, Windows, and Xbox One on 8 March 2019. The game takes place five years after Devil May Cry 4 and follows a trio of warriors with demonic powers, the returning Dante, Nero, and a new protagonist named V, as they attempt to stop the Demon King Urizen from destroying the human world.")),
              GameInfo(
                  game: GameData(
                      title: "Resident EVIL VILLAGE",
                      image: "assets/images/re8.jpg",
                      price: 300,
                      description:
                          "Resident Evil Village[a] is a 2021 survival horror game developed and published by Capcom. It is the sequel to Resident Evil 7: Biohazard (2017). Players control Ethan Winters, who searches for his kidnapped daughter in a village filled with mutant creatures. Village maintains survival horror elements from previous Resident Evil games, with players scavenging environments for items and managing resources. It adds more action-oriented gameplay, with higher enemy counts and a greater emphasis on combat.")),
              GameInfo(
                  game: GameData(
                      title: "Red Dead Redemption II",
                      image: "assets/images/rdr2.jpg",
                      price: 300,
                      description:
                          "The story is set in a fictionalized representation of the United States in 1899 and follows the exploits of Arthur Morgan, an outlaw and member of the Van der Linde gang, who must deal with the decline of the Wild West while attempting to survive against government forces, rival gangs, and other adversaries. ")),
              GameInfo(
                  game: GameData(
                      title: "MINECRAFT",
                      image: "assets/images/minecraft.jpg",
                      price: 300,
                      description:
                          "Minecraft is a sandbox game developed by Mojang Studios and originally released in 2009. The game was created by Markus 'Notch' Persson in the Java programming language. Following several early private testing versions, it was first made public in May 2009 before being fully released in November 2011, with Notch stepping down and Jens 'Jeb' Bergensten taking over development. Minecraft has become the best-selling video game in history, with over 300 million copies sold[17] and nearly 140 million monthly active players as of 2023. It has been ported to several platforms.")),
              GameInfo(
                  game: GameData(
                      title: "FIFA 22",
                      image: "assets/images/fifa.jpg",
                      price: 300,
                      description:
                          "FIFA 22 is a football simulation video game published by Electronic Arts. It is the 29th installment in the FIFA series, and was released worldwide on 1 October 2021 for Nintendo Switch, PlayStation 4, PlayStation 5, Stadia, Windows, Xbox One, and Xbox Series X/S.[1] Players who pre-ordered the ultimate edition, however, received four days of early access and were able to play the game from 27 September.")),
              GameInfo(
                  game: GameData(
                      title: "DELUXE EDITION NFS Heat",
                      image: "assets/images/nfs.jpg",
                      price: 300,
                      description:
                          "The Deluxe Edition release of Need for Speed: Heat is a special bundle that includes the standard game and additional bonus content. It is included as part of an Origin Access Premier subscription, with those subscribed given early access to Need for Speed: Heat on November 5, 2019.")),
            ],
          ),
        ));
  }
}
