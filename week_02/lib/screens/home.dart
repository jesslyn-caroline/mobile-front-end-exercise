import 'package:flutter/material.dart';
import 'package:week_02/screens/detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text(
            "Food List",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ),
      body: Padding(
        padding: EdgeInsets.all(15), 
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Detail()),
                            );
                          }, 
                          child: Text(
                            "Nasi Goreng", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Ayam Goreng", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Sate Ayam", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Mie Goreng", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://awsimages.detik.net.id/community/media/visual/2020/01/03/c993eff2-ea2b-412a-b7ab-69ed1011a2b7_43.jpeg?w=600",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Bakso", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Nasi Padang", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Gado_gado.jpg/1200px-Gado_gado.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Gado-gado", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Soto Ayam", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/vmDriSafVxhO05gc2dSOXby53Mc=/13x7:700x465/750x500/data/photo/2021/09/24/614dc6865eb24.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Nasi Kuning", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          "https://asset.kompas.com/crops/_aMC-HU7taASfMRcywxK5d5RI-o=/17x22:985x667/750x500/data/photo/2022/07/23/62dbd7ac6e943.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height:15),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            "Pizza Margherita", 
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        )
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        )
      )
    );
  }
}