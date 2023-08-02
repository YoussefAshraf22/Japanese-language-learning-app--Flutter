import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
//list of objects from Number model
  final List<Model> number = const [
    Model(
        img: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One',
        sound: 'number_one_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two',
        sound: 'number_two_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_three.png',
        jpName: 'Mittsu',
        enName: 'Three',
        sound: 'number_three_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four',
        sound: 'number_four_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five',
        sound: 'number_five_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six',
        sound: 'number_six_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'Seven',
        sound: 'number_seven_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight',
        sound: 'number_eight_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'Nine',
        sound: 'number_nine_sound.mp3'),
    Model(
        img: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'Ten',
        sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Numbers Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) => Item(
          modelSound: 'numbers',
          model: number[index],
          color: Colors.orange,
        ),
      )),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemList = [];
  //   for (int x = 0; x < number.length; x++) {
  //     itemList.add(Item(num: numbers[x]));
  //   }
  //   return itemList;
  // }
}
