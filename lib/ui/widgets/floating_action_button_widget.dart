import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() => _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState extends State<FloatingActionButtonWidget> {
  static const List<(Color?, Color? background, ShapeBorder?, IconData, String)> customizations =
      <(Color?, Color?, ShapeBorder?, IconData, String)>[
    (
      Color(0xff6d5e0f),
      Color(0xfff8e287),
      ContinuousRectangleBorder(),
      Icons.thumb_up_alt_sharp,
      'Like',
    ),
    (
      Color(0xff415f91),
      Color(0xffd6e3ff),
      null,
      Icons.share_sharp,
      'Share',
    ),
    (
      Color(0xff705575),
      Color(0xfffad8fd),
      StadiumBorder(),
      Icons.subscriptions_sharp,
      'Subscribe',
    ),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Floating Action Button Widget'),
      //   elevation: 16,
      // ),
      backgroundColor: Color(0xFF191c20),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            FloatingActionButton.large(
              onPressed: () {
                setState(() {
                  index = (index + 1) % customizations.length;
                });
              },
              foregroundColor: customizations[index].$1,
              backgroundColor: customizations[index].$2,
              shape: customizations[index].$3,
              child: Icon(
                customizations[index].$4,
              ),
            ),
            Spacer(),
            Text(
              customizations[index].$5,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           const Text('Small', style: TextStyle(fontSize: 20)),
      //           const SizedBox(height: 8),
      //           FloatingActionButton.small(
      //             onPressed: () {},
      //             child: const Icon(Icons.add),
      //           ),
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           const Text('Regular', style: TextStyle(fontSize: 20)),
      //           const SizedBox(height: 8),
      //           FloatingActionButton(
      //             onPressed: () {},
      //             child: const Icon(Icons.favorite),
      //           ),
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           const Text('Large', style: TextStyle(fontSize: 20)),
      //           const SizedBox(height: 8),
      //           FloatingActionButton.large(
      //             onPressed: () {},
      //             child: const Icon(Icons.share),
      //           ),
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           const Text('Extended', style: TextStyle(fontSize: 20)),
      //           const SizedBox(height: 8),
      //           FloatingActionButton.extended(
      //             onPressed: () {},
      //             label: const Text('Subscribe'),
      //             icon: const Icon(Icons.subscriptions),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
