import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Flutter Demo Home Page",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("mario.jpg", width: 250),
            Image.asset("logo.png", width: 250),
            Icon(
              Icons.check_circle_outline_outlined,
              size: 60,
              color: Colors.blue,
            ),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Aplikasi ",
                    style: TextStyle(
                      fontSize: 15
                    )
                  ),
                  TextSpan(
                    text: "belajar ",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    )
                  ),
                  TextSpan(
                    text: "menghitung",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}