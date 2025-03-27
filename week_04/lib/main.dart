import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_04/providers/accountprovider.dart';
import 'package:week_04/providers/cartprovider.dart';
import 'package:week_04/screens/home.dart';

void main () {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AccountProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MyApp(),
    )
    // MyApp()
  );  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}