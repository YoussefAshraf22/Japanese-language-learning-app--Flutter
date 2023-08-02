import 'package:flutter/material.dart';
import 'package:toku/screens/family_screen.dart';
import 'package:toku/screens/pharses_screen.dart';

import '../components/category_item.dart';
import 'colors_screen.dart';
import 'numbers_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Toku App',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.brown,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              
              Category(
                  name: 'Numbers',
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NumbersPage()));
                  }),
              Category(
                name: 'Family Members',
                color: Colors.green,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FamilyPage(),
                      ));
                },
              ),
              Category(
                name: 'Colors',
                color: Colors.deepPurple,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ColorsPage(),
                      ));
                },
              ),
              Category(
                name: 'Pharses',
                color: Colors.lightBlue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PharsesPage(),
                      ));
                },
              ),
            ],
          ),
        ));
  }
}
