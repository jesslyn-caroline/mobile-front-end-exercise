import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  TodoCard({super.key, required this.e, required this.setActivityStatus});

  dynamic e;

  void Function(dynamic e, bool? newStatus) setActivityStatus;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text("${e["activity"]}"),
      subtitle: Text("${e["category"]}"),
      value: e["status"], 
      onChanged: (value) {
        setActivityStatus(e, value);
      }
    );
  }
}