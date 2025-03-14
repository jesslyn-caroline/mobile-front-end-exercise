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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Flutter Demo Home Page",
          ),
        ),
      ),
      body: Center(
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, 
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        color: Color.fromARGB(255, 222, 244, 255),
                        child: Text("Strawberry Pavalav")
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        color: Color.fromARGB(255, 222, 244, 255),
                        child: Text("Strawberry Pavalav")
                      ),
                    ]
                  )
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Image.network("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/crown_layered_pavlova_80809_16x9.jpg")
              ),
            ]
          )
        )
      )
    );
  }
}
