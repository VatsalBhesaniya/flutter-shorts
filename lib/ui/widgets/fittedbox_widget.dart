import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          color: Colors.redAccent,
          child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/deer.jpg',
            ),
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: <Widget>[
      //       const SizedBox(height: 40),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: <Widget>[
      //           Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.redAccent,
      //             child: const FittedBox(
      //               fit: BoxFit.fitHeight,
      //               alignment: Alignment.topLeft,
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.lightBlue,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.thumbsUp,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Like',
      //               ),
      //             ),
      //           ),
      //           Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.lime,
      //             child: const FittedBox(
      //               fit: BoxFit.scaleDown,
      //               alignment: Alignment.topRight,
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.blueGrey,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.share,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Share',
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       const SizedBox(height: 40),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.purple,
      //             child: const FittedBox(
      //               fit: BoxFit.scaleDown,
      //               alignment: Alignment.bottomCenter,
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.lime,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.commentDots,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Comment',
      //               ),
      //             ),
      //           ),
      //           Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.lightBlue,
      //             child: const FittedBox(
      //               fit: BoxFit.cover,
      //               alignment: Alignment.center,
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.red,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.bell,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Subscribe',
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
