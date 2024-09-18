import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors.orangeAccent,
          child: const Baseline(
            baseline: 00,
            baselineType: TextBaseline.alphabetic,
            child: Center(
              child: Text(
                'Flutter Baseline',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      // body: Container(
      //   width: 400,
      //   height: 400,
      //   color: Colors.orangeAccent,
      //   margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
      //   child: Column(
      //     children: <Widget>[
      //       const Baseline(
      //         baseline: 00,
      //         baselineType: TextBaseline.alphabetic,
      //         child: Center(
      //           child: Text(
      //             'Flutter Baseline',
      //             style: TextStyle(
      //               fontSize: 40,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: const <Widget>[
      //           Baseline(
      //             baseline: 80,
      //             baselineType: TextBaseline.alphabetic,
      //             child: Center(
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.redAccent,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.thumbsUp,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Like',
      //               ),
      //             ),
      //           ),
      //           Baseline(
      //             baseline: 80,
      //             baselineType: TextBaseline.alphabetic,
      //             child: Center(
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.lightBlue,
      //                 shadowColor: Colors.green,
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
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: const <Widget>[
      //           Baseline(
      //             baseline: 150,
      //             baselineType: TextBaseline.alphabetic,
      //             child: Center(
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.teal,
      //                 shadowColor: Colors.blue,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.bell,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Subscribe',
      //               ),
      //             ),
      //           ),
      //           Baseline(
      //             baseline: 150,
      //             baselineType: TextBaseline.alphabetic,
      //             child: Center(
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
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
