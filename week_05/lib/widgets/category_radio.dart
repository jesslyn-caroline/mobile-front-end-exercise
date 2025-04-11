import 'package:flutter/material.dart';

class CategoryRadio extends StatelessWidget {
  CategoryRadio({super.key, required this.categoryLabel, required this.gvalue, required this.setRadioValue});

  String? categoryLabel, gvalue;
  void Function(String? v) setRadioValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        value: categoryLabel, 
        groupValue: gvalue, 
        onChanged: (value) {
          setRadioValue(value);
        }, 
        title: Text("${categoryLabel}")
      ),
    );
  }
}