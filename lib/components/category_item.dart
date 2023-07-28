import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? name;
  Color? color;
  Function()? onTap;
  Category({Key? key, required this.name, required this.color, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
              color: color!, borderRadius: BorderRadius.circular(20)),
          child: Text(
            name!,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          alignment: Alignment.centerLeft,
          padding:const EdgeInsets.only(left: 24),
        ),
      ),
    );
  }
}
