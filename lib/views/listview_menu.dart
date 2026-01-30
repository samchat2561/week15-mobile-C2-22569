import 'package:flutter/material.dart';

class ListviewMenu extends StatelessWidget {
  const ListviewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("ListView Menu"),
      ),
      body: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("MENU-1"),
              subtitle: Text("SUB-1"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                debugPrint("MENU-1");
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.purple);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
