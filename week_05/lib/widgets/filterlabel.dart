import 'package:flutter/material.dart';

class Filterlabel extends StatelessWidget {
  Filterlabel({super.key, required this.e, required this.addFilterCategory});

  dynamic e;
  void Function(dynamic e, bool? value) addFilterCategory;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text("${e["label"]}"), 
      selected: e["isChecked"],
      onSelected: (bool selected) {
        addFilterCategory(e, selected);
      });
  }
}