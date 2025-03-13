import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('logo.png', width: 300),
            Icon(Icons.check_circle_outline_rounded, color: Colors.blue, size: 60),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(text: "Aplikasi ", style: TextStyle(fontSize: 16,)),
                  TextSpan(
                    text: "belajar ", 
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    )
                  ),
                  TextSpan(
                    text: "menghitung", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )
                  )
                ]
              )
            ),
            Text(
              "Total:", 
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold
              )),
            Text(
              "0",
              style: TextStyle(
                fontSize: 50,
                color: Colors.grey
              )
            )
          ]
        )
      )
    );
  }
}