import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class Pharses extends StatelessWidget {
  final Model pharsesModel;
  // final String modelSound;
  const Pharses({
    Key? key,
    required this.pharsesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 70,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pharsesModel.jpName,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(pharsesModel.enName,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))
                ],
              ),
              const Spacer(flex: 1),
              IconButton(
                  onPressed: () {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/phrases/');
                    player.play(pharsesModel.sound);
                  },
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 25,
                  ))
            ],
          ),
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
