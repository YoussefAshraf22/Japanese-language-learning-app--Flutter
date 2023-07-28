import 'package:flutter/material.dart';
import '../models/number_model.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  final Number num;

  const Item({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.brown,
          height: 100,
          child: Row(children: [
            Container(
              color: const Color.fromARGB(255, 251, 234, 234),
              child: Image.asset(
                num.img,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  num.jpName,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  num.enName,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Spacer(flex: 1),
            IconButton(
              icon: const Icon(Icons.play_arrow_rounded,
                  color: Colors.white, size: 25),
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/numbers/');
                player.play(num.sound);
              },
            )
          ]),
        ),
        const Divider(
          color: Colors.white,
          thickness: 0.1,
          height: 1.5,
        )
      ],
    );
  }
}
