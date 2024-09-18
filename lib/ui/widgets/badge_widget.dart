import 'package:flutter/material.dart';

class BadgeWidget extends StatefulWidget {
  const BadgeWidget({super.key});

  @override
  State<BadgeWidget> createState() => _BadgeWidgetState();
}

class _BadgeWidgetState extends State<BadgeWidget> {
  static const List<(IconData, String, AlignmentGeometry, Color, Offset)> customizations =
      <(IconData, String, AlignmentGeometry, Color, Offset)>[
    (
      Icons.thumb_up_rounded,
      'Like',
      Alignment.topLeft,
      Colors.deepOrange,
      Offset(-50, -20),
    ),
    (
      Icons.share_rounded,
      'Share',
      Alignment.topRight,
      Colors.purple,
      Offset(-20, -20),
    ),
    (
      Icons.subscriptions_rounded,
      'Subscribe',
      Alignment.bottomCenter,
      Colors.red,
      Offset(-85, 20),
    ),
  ];
  int index = 0;
  int badgeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Badge Widget'),
      // ),
      backgroundColor: Colors.black,
      // backgroundColor: Colors.grey[900],
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              index = (index + 1) % customizations.length;
            });
          },
          child: Badge(
            label: Text(customizations[index].$2),
            smallSize: 48,
            largeSize: 48,
            alignment: customizations[index].$3,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            offset: customizations[index].$5,
            backgroundColor: Colors.blueAccent,
            textColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 40,
            ),
            child: CircleAvatar(
              radius: 80,
              // backgroundColor: Colors.blueAccent,
              child: Icon(
                customizations[index].$1,
                color: customizations[index].$4,
                size: 100,
              ),
            ),
          ),
        ),
        // child: Column(
        //   children: [
        //     SizedBox(height: 80),
        //     Badge(
        //       label: Text('8'),
        //       isLabelVisible: true,
        //       backgroundColor: Colors.blueAccent,
        //       smallSize: 48,
        //       largeSize: 48,
        //       alignment: Alignment.topRight,
        //       offset: Offset(20, -20),
        //       padding: EdgeInsets.symmetric(
        //         horizontal: 16,
        //       ),
        //       textColor: Colors.amber,
        //       textStyle: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 24,
        //       ),
        //       child: Icon(
        //         Icons.shopping_cart_rounded,
        //         size: 124,
        //         color: Colors.lime,
        //       ),
        //     ),
        //     // SizedBox(height: 80),
        //     Badge.count(
        //       count: badgeCount,
        //       textColor: Colors.black,
        //       backgroundColor: Colors.amber,
        //       child: ElevatedButton(
        //         onPressed: () {
        //           setState(() {
        //             badgeCount++;
        //           });
        //         },
        //         child: Text('Press Me!'),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
