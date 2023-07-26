import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Colors Screen'),centerTitle: true,backgroundColor: Colors.deepPurple,),
      body: SafeArea(child: 
      Center(child: Text('Colors Screen',style: TextStyle(fontSize: 25),),)),
    );
  }
}