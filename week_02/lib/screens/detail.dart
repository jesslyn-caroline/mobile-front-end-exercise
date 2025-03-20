import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text(
            "Detail",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.network("https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg"),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey)
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Nasi Goreng",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              "120 reviews",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                              ),
                            )
                          ],
                        ),
                      )
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey)
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.add_box_rounded, color: Colors.blueAccent, size: 30,),
                                SizedBox(height: 3),
                                Text("PREP"),
                                SizedBox(height: 3),
                                Text("15 min")
                              ]
                            ),
                            SizedBox(width: 40),
                            Column(
                              children: [
                                Icon(Icons.timer, color: Colors.blueAccent, size: 30,),
                                SizedBox(height: 3),
                                Text("COOK"),
                                SizedBox(height: 3),
                                Text("10 min")
                              ]
                            ),
                            SizedBox(width: 40),
                            Column(
                              children: [
                                Icon(Icons.house, color: Colors.blueAccent, size: 30,),
                                SizedBox(height: 3),
                                Text("FEED"),
                                SizedBox(height: 3),
                                Text("1 min")
                              ]
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description", 
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              )
                            ),
                            SizedBox(height: 40,),
                            Text("Nasi yang digoreng dengan bumbu rempah khas, potongan ayam, udang, sayuran, dan telur yang diaduk menjadi satu.")
                          ],
                        )
                      )
                    )
                  ]
                ),
              )
            )
          ]
        ),
      )
    );
  }
}