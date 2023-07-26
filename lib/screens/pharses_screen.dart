import 'package:flutter/material.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharses Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          'Pharses Screen',
          style: TextStyle(fontSize: 25),
        ),
      )),
    );
  }
}
