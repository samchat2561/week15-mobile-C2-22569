import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Flutter Development"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mr.Mark Zuckerberg"),
              accountEmail: Text("mark@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.android)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                debugPrint("Test Home");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Row Widget"),
              onTap: () {
                debugPrint("Test Row Widget");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Column Widget"),
              onTap: () {
                debugPrint("Test Column Widget");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("ListView Menu"),
              onTap: () {
                debugPrint("Test ListView Menu");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_score_rounded),
              title: Text("Card and Inkwell"),
              onTap: () {
                debugPrint("Test Card and Inkwell");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("My card"),
              onTap: () {
                debugPrint("Test My Card");
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("MyApp", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
