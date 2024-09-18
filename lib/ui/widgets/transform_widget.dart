import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform Widget'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              color: Colors.blueGrey,
              width: 400,
              height: 100,
              child: Transform.translate(
                offset: const Offset(200, 50),
                child: const Text(
                  'Translate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Transform.scale(
              scaleX: 4,
              scaleY: 2,
              child: const Text('Scale'),
            ),
            const SizedBox(height: 50),
            Transform.rotate(
              angle: pi / 8,
              child: const Text(
                'Rotate Me 🫠',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.008)
                ..rotateX(-0.3),
              child: Container(
                width: 300,
                height: 200,
                padding: const EdgeInsets.all(34),
                color: Colors.redAccent,
                child: const Text(
                  '3D perspective 🤯',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              color: Colors.black,
              width: 200,
              height: 200,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.skewY(0.3)..rotateZ(-pi / 12.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.lightBlue,
                  child: const Text(
                    'I am skewed 🤪',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       Container(
      //         color: Colors.blueGrey,
      //         width: 400,
      //         height: 120,
      //         child: Transform.translate(
      //           offset: const Offset(100, 10),
      //           child: const FaIconButtonWidget(
      //             backgroundColor: Colors.lightBlue,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.thumbsUp,
      //               size: 30,
      //             ),
      //             iconText: 'Like',
      //             textColor: Colors.white,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(height: 10),
      //       Transform.rotate(
      //         angle: pi / 8,
      //         child: const FaIconButtonWidget(
      //           backgroundColor: Colors.blueAccent,
      //           shadowColor: Colors.red,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.share,
      //             size: 40,
      //           ),
      //           iconText: 'Share',
      //         ),
      //       ),
      //       const SizedBox(height: 10),
      //       Transform(
      //         alignment: Alignment.topRight,
      //         transform: Matrix4.identity()
      //           ..setEntry(3, 2, 0.01)
      //           ..rotateX(-0.2),
      //         child: Container(
      //           width: 300,
      //           height: 150,
      //           padding: const EdgeInsets.all(4),
      //           color: Colors.redAccent,
      //           child: const FaIconButtonWidget(
      //             backgroundColor: Colors.pink,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.bell,
      //               size: 40,
      //             ),
      //             iconText: 'Subscribe',
      //             textColor: Colors.white,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(height: 40),
      //       Container(
      //         color: Colors.black,
      //         width: 200,
      //         height: 150,
      //         child: Transform(
      //           alignment: Alignment.topRight,
      //           transform: Matrix4.skewY(0.3)..rotateZ(-pi / 12.0),
      //           child: Container(
      //             padding: const EdgeInsets.all(8.0),
      //             color: Colors.lightBlue,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.lime,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.commentDots,
      //                 size: 40,
      //               ),
      //               iconText: 'Comment',
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
