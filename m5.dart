import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}
class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Map <String, bool?> checkedCategories = {
  //   "All" : true,
  //   "Elektronik" : true,
  //   "Makanan" : true,
  //   "Minuman" : true
  // };

  List <Map <String, dynamic>> categories = [
    {
      "category" : "Elektronik",
      "isChecked" :false
    },
    {
      "category" : "Makanan",
      "isChecked" : false
    },
    {
      "category" : "Minuman",
      "isChecked" : false
    },
  ];

  List <Map <String, dynamic>> productList = [
    {
      "name" : "HP",
      "category" : "Elektronik",
    },
    {
      "name" : "Sushi",
      "category" : "Makanan",
    },
    {
      "name" : "Takoyaki",
      "category" : "Makanan",
    },
    {
      "name" : "Apple Juice",
      "category" : "Minuman",
    },
  ];

  List <String> filteredCategory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ...categories.map((e) {
                  return FilterChip(
                    label: Text(e['category']),
                    selected: e['isChecked'],
                    onSelected: (value) {
                      setState(() {
                        if (filteredCategory.contains(e["category"]) == true) {
                          filteredCategory.remove(e["category"]);
                        }
                        else {
                          filteredCategory.add(e["category"]);
                        }
                        e["isChecked"] = value;
                        print(filteredCategory);
                      });
                    },
                  );
                })
              ]
            ),
            ...productList.where((e) {
              return filteredCategory.contains(e['category']) == true || filteredCategory.length == 0;
            }).map((e) {
              return Text(e["name"]);
            })
          ]
        )
      )
    );
  }
}
