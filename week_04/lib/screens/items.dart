import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_04/components/accountprofile.dart';
import 'package:week_04/providers/cartprovider.dart';
import 'package:week_04/screens/cart.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  TextEditingController sepatuC = TextEditingController();
  TextEditingController celanaC = TextEditingController();
  TextEditingController tasC = TextEditingController();
  TextEditingController bajuC = TextEditingController();

  bool changes = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Items"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    AccountProfile(letter: "A"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Barang #Sepatu", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                        Text("Detail sepatu", style: TextStyle(fontSize: 12, color: Colors.grey),)
                      ],
                    )
                  ]
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: sepatuC,
                      ),
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: () {
                        context.read<CartProvider>().addSepatu(int.parse(sepatuC.text));
                        print(sepatuC.text);
                      }, 
                      icon: Icon(
                        (context.watch<CartProvider>().sepatu == 0 || sepatuC.text.isEmpty? Icons.add_shopping_cart_outlined : Icons.check), 
                        size: 30,
                      )
                    )
                  ]
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    AccountProfile(letter: "A"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Barang #Celana", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                        Text("Detail celana", style: TextStyle(fontSize: 12, color: Colors.grey),)
                      ],
                    )
                  ]
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: celanaC,
                      ),
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: () {
                        context.read<CartProvider>().addCelana(int.parse(celanaC.text));
                      }, 
                      icon: Icon(
                        (context.watch<CartProvider>().celana == 0 || celanaC.text.isEmpty? Icons.add_shopping_cart_outlined : Icons.check), 
                        size: 30,
                      )
                    )
                  ]
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    AccountProfile(letter: "A"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Barang #Tas", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                        Text("Detail tas", style: TextStyle(fontSize: 12, color: Colors.grey),)
                      ],
                    )
                  ]
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: tasC,
                      ),
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: () {
                        context.read<CartProvider>().addTas(int.parse(tasC.text));
                      }, 
                      icon: Icon(
                        (context.watch<CartProvider>().tas == 0 || tasC.text.isEmpty? Icons.add_shopping_cart_outlined : Icons.check), 
                        size: 30,
                      )
                    )
                  ]
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    AccountProfile(letter: "A"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Barang #Baju", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                        Text("Detail baju", style: TextStyle(fontSize: 12, color: Colors.grey),)
                      ],
                    )
                  ]
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: bajuC,
                      ),
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: () {
                        context.read<CartProvider>().addBaju(int.parse(bajuC.text));
                      }, 
                      icon: Icon(
                        (context.watch<CartProvider>().baju == 0 || bajuC.text.isEmpty? Icons.add_shopping_cart_outlined : Icons.check), 
                        size: 30,
                      )
                    )
                  ]
                )
              ],
            ),
            IconButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Cart()),
              );
            }, icon: Icon(Icons.check_circle_outline))
          ],
        ),
      ),
    );
  }
}