import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Card(
        elevation: 8,
        color: Colors.redAccent,
        shadowColor: Colors.blue,
        surfaceTintColor: Colors.orange,
        shape: const BeveledRectangleBorder(),
        margin: const EdgeInsets.all(20),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/laughing_kid.jpg',
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '''The secret of staying young is to live honestly, eat slowly, and lie about your age''',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Card(
      //   elevation: 32,
      //   color: Colors.purple,
      //   shadowColor: Colors.purpleAccent,
      //   surfaceTintColor: Colors.black,
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(32),
      //     ),
      //   ),
      //   margin: const EdgeInsets.all(20),
      //   clipBehavior: Clip.hardEdge,
      //   child: Padding(
      //     padding: const EdgeInsets.only(bottom: 34),
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         const SizedBox(height: 40),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: <Widget>[
      //             FaIconButtonWidget(
      //               backgroundColor: Colors.lightBlue,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.thumbsUp,
      //                 size: 40,
      //               ),
      //               iconText: 'Like',
      //               textColor: Colors.white,
      //             ),
      //             FaIconButtonWidget(
      //               backgroundColor: Colors.blueGrey,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.share,
      //                 size: 40,
      //               ),
      //               iconText: 'Share',
      //               textColor: Colors.white,
      //             ),
      //           ],
      //         ),
      //         const SizedBox(height: 40),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: <Widget>[
      //             FaIconButtonWidget(
      //               backgroundColor: Colors.lime,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.commentDots,
      //                 size: 40,
      //               ),
      //               iconText: 'Comment',
      //               textColor: Colors.white,
      //             ),
      //             FaIconButtonWidget(
      //               backgroundColor: Colors.red,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.bell,
      //                 size: 40,
      //               ),
      //               iconText: 'Subscribe',
      //               textColor: Colors.white,
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
