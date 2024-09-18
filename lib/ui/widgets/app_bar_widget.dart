import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        shadowColor: Colors.yellow,
        actions: const <Widget>[
          Icon(Icons.settings),
          SizedBox(width: 16),
          Icon(Icons.person),
          SizedBox(width: 16),
        ],
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Text(index.toString());
        },
      ),
    );
  }
}
