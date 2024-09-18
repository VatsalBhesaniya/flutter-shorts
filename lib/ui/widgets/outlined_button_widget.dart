import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OutlinedButtonWidget extends StatefulWidget {
  const OutlinedButtonWidget({super.key});

  @override
  State<OutlinedButtonWidget> createState() => _OutlinedButtonWidgetState();
}

class _OutlinedButtonWidgetState extends State<OutlinedButtonWidget> {
  String message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outlined Button Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  message = 'Hey you pressed me!';
                });
              },
              onLongPress: () {
                setState(() {
                  message = 'Hey you pressed me so hard! 🤢';
                });
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 8,
                ),
                elevation: 16,
                foregroundColor: Colors.white,
                shadowColor: Colors.red,
                side: const BorderSide(
                  color: Colors.black38,
                  width: 5,
                ),
                shape: const StadiumBorder(),
              ),
              // style: ButtonStyle(
              //   // backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlue),
              //   foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              //   padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
              //     EdgeInsets.symmetric(
              //       horizontal: 32,
              //       vertical: 8,
              //     ),
              //   ),
              //   backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              //     (states) {
              //       if (states.contains(MaterialState.pressed)) {
              //         return Colors.pink;
              //       }
              //       if (states.contains(MaterialState.disabled)) {
              //         return Colors.grey;
              //       }
              //       if (states.contains(MaterialState.focused)) {
              //         return Colors.lime;
              //       }
              //       return Colors.blueAccent;
              //     },
              //   ),
              // ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Press Me!',
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                message,
                style: const TextStyle(fontSize: 32),
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     children: <Widget>[
      //       const SizedBox(height: 40),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           OutlinedButton(
      //             onPressed: () {},
      //             style: OutlinedButton.styleFrom(
      //               backgroundColor: Colors.pink.shade200,
      //               elevation: 16,
      //               foregroundColor: Colors.white,
      //               shadowColor: Colors.pink,
      //               side: const BorderSide(
      //                 color: Colors.black38,
      //                 width: 2,
      //               ),
      //               shape: const StadiumBorder(),
      //             ),
      //             child: const Padding(
      //               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.pink,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.thumbsUp,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Like',
      //               ),
      //             ),
      //           ),
      //           OutlinedButton(
      //             onPressed: () {},
      //             style: OutlinedButton.styleFrom(
      //               backgroundColor: Colors.orangeAccent,
      //               elevation: 16,
      //               foregroundColor: Colors.white,
      //               shadowColor: Colors.deepPurpleAccent,
      //               side: const BorderSide(
      //                 color: Colors.black38,
      //                 width: 2,
      //               ),
      //               shape: const StarBorder.polygon(),
      //             ),
      //             child: const Padding(
      //               padding: EdgeInsets.all(32),
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.deepPurpleAccent,
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
      //       const SizedBox(height: 80),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           OutlinedButton(
      //             onPressed: () {},
      //             style: OutlinedButton.styleFrom(
      //               backgroundColor: Colors.lime,
      //               elevation: 16,
      //               foregroundColor: Colors.white,
      //               shadowColor: Colors.brown,
      //               side: const BorderSide(
      //                 color: Colors.black38,
      //                 width: 2,
      //               ),
      //               shape: const ContinuousRectangleBorder(),
      //             ),
      //             child: Padding(
      //               padding: const EdgeInsets.all(32),
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.brown.shade400,
      //                 shadowColor: Colors.red,
      //                 faIcon: const FaIcon(
      //                   FontAwesomeIcons.commentDots,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Comment',
      //               ),
      //             ),
      //           ),
      //           OutlinedButton(
      //             onPressed: () {},
      //             style: OutlinedButton.styleFrom(
      //               backgroundColor: Colors.blueAccent,
      //               elevation: 16,
      //               foregroundColor: Colors.white,
      //               shadowColor: Colors.redAccent,
      //               side: const BorderSide(
      //                 color: Colors.black38,
      //                 width: 2,
      //               ),
      //               shape: const CircleBorder(),
      //             ),
      //             child: const Padding(
      //               padding: EdgeInsets.all(32),
      //               child: FaIconButtonWidget(
      //                 backgroundColor: Colors.redAccent,
      //                 shadowColor: Colors.red,
      //                 faIcon: FaIcon(
      //                   FontAwesomeIcons.bell,
      //                   size: 40,
      //                 ),
      //                 iconText: 'Subscribe',
      //                 textColor: Colors.white,
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
