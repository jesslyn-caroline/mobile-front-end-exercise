import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_04/providers/accountprovider.dart';
import 'package:week_04/screens/items.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Home", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: context.watch<AccountProvider>().usernameC,
              decoration: InputDecoration(
                label: Text("Username"),
                errorText: context.watch<AccountProvider>().isUsername ? null : "Username is required",
              ),
            ),
            SizedBox(height:15),
            TextField(
              controller: context.watch<AccountProvider>().passwordC,
              decoration: InputDecoration(
                label: Text("Password"),
                errorText: context.watch<AccountProvider>().isPassword ? null : "Password is required",
              ),
            ),
            SizedBox(height:15),
            ElevatedButton(
              onPressed: () => {
                context.read<AccountProvider>().login(),
                if (context.read<AccountProvider>().isUsername && context.read<AccountProvider>().isPassword) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Items()
                    )
                  )
                }
              },
              child: Text("Login"),
            )
          ],
        )
      ),
    );
  }
}