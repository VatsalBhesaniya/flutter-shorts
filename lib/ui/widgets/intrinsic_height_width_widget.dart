import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntrinsicHeightWidthWidget extends StatelessWidget {
  const IntrinsicHeightWidthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intrinsic Height & Width'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 100,
                  height: 150,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 250,
                  color: Colors.lime,
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.brown,
                ),
                Container(
                  width: 300,
                  height: 100,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     IntrinsicHeight(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Container(
      //             width: 100,
      //             height: 150,
      //             color: Colors.red,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.lightBlue,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.thumbsUp,
      //                 size: 40,
      //               ),
      //               iconText: 'Like',
      //             ),
      //           ),
      //           Container(
      //             width: 100,
      //             height: 250,
      //             color: Colors.lime,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.blueGrey,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.share,
      //                 size: 40,
      //               ),
      //               iconText: 'Share',
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 50),
      //     IntrinsicWidth(
      //       child: Column(
      //         children: [
      //           Container(
      //             width: 70,
      //             height: 70,
      //             color: Colors.orange,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.teal,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.commentDots,
      //                 size: 20,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             width: 140,
      //             height: 80,
      //             color: Colors.yellow,
      //             child: const Center(
      //               child: Text(
      //                 'Comment',
      //                 style: TextStyle(
      //                   fontSize: 24,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Container(
      //             width: 220,
      //             height: 100,
      //             color: Colors.brown,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.redAccent,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.bell,
      //                 size: 40,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             width: 340,
      //             height: 120,
      //             color: Colors.pink,
      //             child: const Center(
      //               child: Text(
      //                 'Subscribe',
      //                 style: TextStyle(
      //                   fontSize: 48,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
