import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: const Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Text(
            'Hello World!',
            // textScaleFactor: 1,
            textAlign: TextAlign.justify,
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: true,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 24,
            ),
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(32),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     mainAxisSize: MainAxisSize.max,
      //     children: const [
      //       Text(
      //         'Like',
      //         textAlign: TextAlign.start,
      //         style: TextStyle(
      //           color: Colors.blueGrey,
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       SizedBox(height: 140),
      //       Text(
      //         'Share',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           color: Colors.blueGrey,
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       SizedBox(height: 140),
      //       Text(
      //         'Subscribe',
      //         textAlign: TextAlign.end,
      //         style: TextStyle(
      //           color: Colors.blueGrey,
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
