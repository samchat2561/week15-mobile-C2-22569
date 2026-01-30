import 'package:flutter/material.dart';
import 'package:flutter_week15/views/mycard.dart';
import 'package:flutter_week15/views/row_page.dart';

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
              currentAccountPicture: CircleAvatar(
                // child: Icon(Icons.android),
                backgroundImage: NetworkImage('https://cdn.britannica.com/99/236599-050-1199AD2C/Mark-Zuckerberg-2019.jpg'),
                ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () async {
                debugPrint("Test Home");
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Row Widget"),
              onTap: () async {
                debugPrint("Test Row Widget");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowPage(text: 'Row Page')),
                );
                // await Navigator.pushNamed(context, '/row');
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Column Widget"),
              onTap: () async {
                debugPrint("Test Column Widget");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ColumnPage()),
                // );
                await Navigator.pushNamed(context, '/column');
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("ListView Menu"),
              onTap: () async {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ListviewMenu()),
                // );
                final result = await Navigator.pushNamed(context, '/menu');
                debugPrint("Test ListView Menu: $result");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_score_rounded),
              title: Text("Card and Inkwell"),
              onTap: () async {
                debugPrint("Test Card and Inkwell");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CardPage()),
                // );
                await Navigator.pushNamed(context, '/card');
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("My card"),
              onTap: () async {
                debugPrint("Test My Card");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Mycard()),
                // );
                // Navigator.pushNamed(context, '/mycard');
                await Navigator.pushNamed(context, Mycard.id);

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
