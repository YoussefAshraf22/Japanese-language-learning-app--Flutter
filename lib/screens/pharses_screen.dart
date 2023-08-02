import 'package:flutter/material.dart';
import 'package:toku/components/pharses_item.dart';

import '../models/model.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({Key? key}) : super(key: key);

  final List<Model> pharses = const [
    // ignore: missing_required_param
    Model(
        jpName: 'Kimasu ka?',
        enName: 'Are you coming?',
        sound: 'are_you_coming.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Wasurezu ni kōdoku shite kudasai',
        enName: 'Do not forget to subscribe',
        sound: 'dont_forget_to_subscribe.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Go kibun wa ikagadesu ka?',
        enName: 'How are you feeling?',
        sound: 'how_are_you_feeling.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime',
        sound: 'i_love_anime.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'I love progeamming',
        sound: 'i_love_programming.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'Programming is easy',
        sound: 'programming_is_easy.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Namae wa nandesu ka?',
        enName: 'What is your name?',
        sound: 'what_is_your_name.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Doko ni iku no?',
        enName: 'Where are you going?',
        sound: 'where_are_you_going.wav'),
    // ignore: missing_required_param
    Model(
        jpName: 'Hai, kimasu',
        enName: 'Yes I am coming',
        sound: 'yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pharses Screen',
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: pharses.length,
        itemBuilder: (context, index) => Pharses(pharsesModel: pharses[index]),
      )),
    );
  }
}
