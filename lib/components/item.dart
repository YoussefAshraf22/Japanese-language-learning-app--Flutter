import 'package:flutter/material.dart';
import '../models/model.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  final Model model;
  final Color color;
  final String modelSound;

  const Item(
      {Key? key,
      required this.model,
      required this.color,
      required this.modelSound})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          height: 100,
          child: Row(children: [
            Container(
              color: const Color.fromARGB(255, 251, 234, 234),
              child: Image.asset(
                model.img!,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.jpName,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  model.enName,
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
                    AudioCache(prefix: 'assets/sounds/$modelSound/');
                player.play(model.sound);
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
