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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Nothing happened");
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20), 
              ),
              child: Text('+', 
                style: TextStyle(
                  fontSize: 30
                )
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                    },
                    child: Text('Profile'),
                  ),
                  Image.network("https://www.muraldecal.com/en/img/asy338-png/folder/products-detalle-png/wall-stickers-for-kids-mario-bros-flying.png"),
                  Image.network("https://purepng.com/public/uploads/large/purepng.com-nike-logologobrand-logoiconslogos-251519940082eoxxs.png"),
                  Icon(Icons.check_circle_outline_rounded, size:50, color: Colors.blue),
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
                  ),
                  Text("Total:", 
                    style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    )
                  ),
                  Text("0",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.grey
                    )
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.yellow,
                    child: Align(
                      alignment: FractionalOffset(0.2, 0.6),
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.red,
                      )
                    )
                  )
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ), 
        title: Center( 
          child: Text("Profile"),
        )
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileDetailScreen()
              )
            );
          },
          child: Text("Profile Detail")
        )
      )
    );
  }
}

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ), 
        title: Center(
          child: Text("Profile Detail")
        )
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Ini adalah Profile Detail"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali")
            )
          ]
        )
      )
    );
  }
}
