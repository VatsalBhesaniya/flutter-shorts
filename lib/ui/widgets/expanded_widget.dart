import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
              height: 200,
              width: 200,
            ),
            Expanded(
              child: Container(
                color: Colors.lime,
                width: 200,
              ),
            ),
            Container(
              color: Colors.blueGrey,
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: <Widget>[
      //       Expanded(
      //         flex: 2,
      //         child: Container(
      //           color: Colors.blueGrey,
      //           height: 100,
      //         ),
      //       ),
      //       Container(
      //         color: Colors.lime,
      //         height: 100,
      //         width: 100,
      //       ),
      //       Expanded(
      //         child: Container(
      //           color: Colors.blueGrey,
      //           height: 100,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: Column(
      //     children: <Widget>[
      //       Expanded(
      //         child: Container(
      //           color: Colors.blueGrey,
      //           width: 200,
      //           child: const FaIconButtonWidget(
      //             backgroundColor: Colors.redAccent,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.thumbsUp,
      //               size: 40,
      //             ),
      //             iconText: 'Like',
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: Container(
      //           color: Colors.lime,
      //           width: 200,
      //           child: const FaIconButtonWidget(
      //             backgroundColor: Colors.lightBlue,
      //             shadowColor: Colors.green,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.share,
      //               size: 40,
      //             ),
      //             iconText: 'Share',
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: Container(
      //           color: Colors.deepOrange,
      //           width: 200,
      //           child: const FaIconButtonWidget(
      //             backgroundColor: Colors.teal,
      //             shadowColor: Colors.blue,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.bell,
      //               size: 40,
      //             ),
      //             iconText: 'Subscribe',
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: Container(
      //           color: Colors.lightBlue,
      //           width: 200,
      //           child: const FaIconButtonWidget(
      //             backgroundColor: Colors.lime,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.commentDots,
      //               size: 40,
      //             ),
      //             iconText: 'Comment',
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: Container(
      //           color: Colors.white,
      //           width: 200,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
