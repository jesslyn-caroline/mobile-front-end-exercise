import 'package:flutter/material.dart';

class AccountProfile extends StatelessWidget {
  AccountProfile({super.key, required this.letter});

  String letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.purple,
        shape: BoxShape.circle,
      ),
      child: Text(letter, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
    );
  }
}