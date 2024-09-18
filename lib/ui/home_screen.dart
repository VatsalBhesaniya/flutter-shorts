import 'package:flutter/material.dart';
import 'package:flutter_shorts/ui/flutter_animations.dart';
import 'package:flutter_shorts/ui/ui_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _buildButton(
              context: context,
              title: 'UI Widgets',
              widget: const UIWidgets(),
            ),
            _buildButton(
              context: context,
              title: 'Flutter Animations',
              widget: const FlutterAnimations(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required String title,
    required Widget widget,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          );
        },
        padding: const EdgeInsets.all(8),
        color: Colors.orangeAccent,
        shape: const BeveledRectangleBorder(),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
