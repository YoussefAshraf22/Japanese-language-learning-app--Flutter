import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? name;
  Color? color;
  Function()? onTap;
  Category({required this.name, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: color!,
            borderRadius: BorderRadius.circular(23),
            border: Border.all(color: color!, style: BorderStyle.solid)),
        child: Text(
          name!,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
      ),
    );
  }
}
