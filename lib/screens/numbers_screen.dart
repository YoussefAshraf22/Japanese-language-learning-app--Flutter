import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        color: Colors.brown,
        height: 100,
        child: Row(children: [
          Container(
            color: Color.fromARGB(255, 242, 231, 231),
            child: Image.asset(
              'assets/images/numbers/number_one.png',
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ichi',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'one',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 28,
            ),
          )
        ]),
      )),
    );
  }
}
