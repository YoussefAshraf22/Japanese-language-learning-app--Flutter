import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          'Family Screen',
          style: TextStyle(fontSize: 25),
        ),
      )),
    );
  }
}
