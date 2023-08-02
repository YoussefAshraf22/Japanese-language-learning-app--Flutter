import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Model> color = const [
    Model(
        img: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        sound: 'black.wav'),
    Model(
        img: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'brown.wav'),
    Model(
        img: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty Yellow',
        sound: 'dustyYellow.wav'),
    Model(
        img: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound: 'gray.wav'),
    Model(
        img: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'green.wav'),
    Model(
        img: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'red.wav'),
    Model(
        img: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'white.wav'),
    Model(
        img: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors Screen', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) => Item(
            model: color[index],
            color: Colors.deepPurple,
            modelSound: 'colors'),
      )),
    );
  }
}
