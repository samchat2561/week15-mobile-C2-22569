import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Card Widget"),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            onTap: () {
              debugPrint("CARD-1");
            },
            child: SizedBox(
              width: 300.0,
              height: 100.0,
              child: Column(children: [Icon(Icons.home), Text("CARD-1")]),
            ),
          ),
        ),
      ),
    );
  }
}
