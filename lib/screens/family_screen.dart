import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import '../models/model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);

  final List<Model> family = const [
    Model(
        img: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'father.wav'),
    Model(
        img: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'mother.wav'),
    Model(
        img: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'daughter.wav'),
    Model(
        img: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'son.wav'),
    Model(
        img: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Grand Father',
        sound: 'grandFather.wav'),
    Model(
        img: 'assets/images/family_members/family_grandmother.png',
        jpName: 'O bāchan',
        enName: 'Grand Mother',
        sound: 'grandMother.wav'),
    Model(
        img: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'Older Brother',
        sound: 'son.wav'),
    Model(
        img: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older Sister',
        sound: 'olderSister.wav'),
    Model(
        img: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother',
        sound: 'youngerBrohter.wav'),
    Model(
        img: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger Sister',
        sound: 'youngerSister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, index) => Item(
              model: family[index],
              color: Colors.green,
              modelSound: 'family_members'),
        ),
      ),
    );
  }
}
