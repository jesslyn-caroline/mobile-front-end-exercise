import 'package:flutter/material.dart';
import 'package:week_05/widgets/category_radio.dart';
import 'package:week_05/widgets/filterlabel.dart';
import 'package:week_05/widgets/todo_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int completed = 0, total = 0;

  List <Map<String, dynamic>> todos = [];

  void setActivityStatus (dynamic e, bool? newStatus) {
    setState(() {
      e["status"] = newStatus;

      if (e["status"] == true) completed++;
      else completed--;
    });
  }


  String? radioValue = "";

  List categories = ["Campus", "Home", "Office"];

  void setRadioValue (String? v) {
    setState(() {
      radioValue = v;
    });
  }

  TextEditingController todoC = TextEditingController();

  void addActivity () {
    setState(() {
      todos.add({
        "activity" : todoC.text,
        "category" : radioValue,
        "status" : false
      });

      todoC.clear();
      setRadioValue("");

      total = todos.length;
    });
  }

  List <Map<String, dynamic>> filterLabel = [
    {
      "label" : "Campus",
      "isChecked" : false,
    },
    {
      "label" : "Home",
      "isChecked" : false,
    },
    {
      "label" : "Office",
      "isChecked" : false,
    }
  ];

  List <String> filteredCategory = [];

  void addFilterCategory(dynamic e, bool? value) {
    setState(() {
      if (filteredCategory.contains(e["label"]) == true) {
        filteredCategory.remove(e["label"]);
      }
      else {
        filteredCategory.add(e["label"]);
      }

      e["isChecked"] = value;
      
      completed = total = 0;

      total = todos.where((e) {
        return filteredCategory.contains(e["category"]) == true || filteredCategory.length == 0;
      }).length;

      completed = todos.where((e) {
        return e["status"] == true && (filteredCategory.contains(e["category"]) == true || filteredCategory.length == 0);
      }).length;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("To-do List", style: TextStyle(color: Colors.white),)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoC,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "To-do"
                      ),
                    ),
                  ),
                  SizedBox(width:15),
                  IconButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )),
                    ),
                    icon: Icon(Icons.add),
                    color: Colors.white,
                    iconSize: 30,
                    onPressed: () {
                      addActivity();
                    }
                  )
                ],
              ),
              SizedBox(height: 20),
              Text("Categories", style: TextStyle(fontWeight: FontWeight.bold),),
              SingleChildScrollView(
                child: Row(
                children: [
                    CategoryRadio(categoryLabel: categories[0], gvalue: radioValue, setRadioValue: (v) {setRadioValue(v);}),
                    CategoryRadio(categoryLabel: categories[1], gvalue: radioValue, setRadioValue: (v) {setRadioValue(v);}),
                    CategoryRadio(categoryLabel: categories[2], gvalue: radioValue, setRadioValue: (v) {setRadioValue(v);})
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Filters", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Filterlabel(e: filterLabel[0], addFilterCategory: (e, value) {addFilterCategory(e, value);}),
                  Filterlabel(e: filterLabel[1], addFilterCategory: (e, value) {addFilterCategory(e, value);}),
                  Filterlabel(e: filterLabel[2], addFilterCategory: (e, value) {addFilterCategory(e, value);}),
                ],
              ),
              SizedBox(height: 20),
              Text("To-dos (${completed}/${total})", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
              ...todos.where((e) {
                return filteredCategory.contains(e["category"]) == true || filteredCategory.length == 0;
              }).map((e) {
                return TodoCard(
                  e: e,
                  setActivityStatus: (e, s) {
                    setActivityStatus(e, s);
                  }
                );
              })
            ]
          )
        ),
      )
    );
  }
}