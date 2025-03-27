import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_04/providers/cartprovider.dart';


class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Cart", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            (context.read<CartProvider>().sepatu > 0 ? 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sepatu"),
                  Text("${context.read<CartProvider>().sepatu}")
                ]
              ) : 
              Container()
            ),
            (context.read<CartProvider>().celana > 0 ? 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Celana"),
                  Text("${context.read<CartProvider>().celana}")
                ]
              ) : 
              Container()
            ),
            (context.read<CartProvider>().tas > 0 ? 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tas"),
                  Text("${context.read<CartProvider>().tas}")
                ]
              ) : 
              Container()
            ),
            (context.read<CartProvider>().baju > 0 ? 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Baju"),
                  Text("${context.read<CartProvider>().baju}")
                ]
              ) : 
              Container()
            )
          ],
        ),
      ),
    );
  }
}