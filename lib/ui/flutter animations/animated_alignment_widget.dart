import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  Alignment alignment = Alignment.topRight;
  // Alignment likeAlignment = Alignment.bottomRight;
  // MainAxisAlignment likeMainAlignment = MainAxisAlignment.end;
  // Alignment shareAlignment = Alignment.bottomLeft;
  // MainAxisAlignment shareMainAlignment = MainAxisAlignment.end;
  // Alignment commentAlignment = Alignment.topRight;
  // MainAxisAlignment commentMainAlignment = MainAxisAlignment.start;
  // Alignment subscribeAlignment = Alignment.topLeft;
  // MainAxisAlignment subscribeMainAlignment = MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align'),
        backgroundColor: Colors.amberAccent,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            alignment = alignment == Alignment.topRight
                ? Alignment.bottomLeft
                : Alignment.topRight;
          });
        },
        child: Container(
          width: 400.0,
          height: 500.0,
          color: Colors.blueGrey.shade100,
          margin: const EdgeInsets.all(32),
          child: AnimatedAlign(
            alignment: alignment,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 200),
          ),
        ),
      ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     const SizedBox(height: 32),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container(
      //           width: 200.0,
      //           height: 200.0,
      //           color: Colors.blueGrey.shade100,
      //           child: AnimatedAlign(
      //             alignment: likeAlignment,
      //             duration: const Duration(seconds: 1),
      //             curve: Curves.fastOutSlowIn,
      //             child: FaIconButtonWidget(
      //               mainAxisAlignment: likeMainAlignment,
      //               onPressed: () {
      //                 setState(() {
      //                   likeAlignment = Alignment.topLeft;
      //                   likeMainAlignment = MainAxisAlignment.start;
      //                 });
      //               },
      //               backgroundColor: Colors.pink,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.thumbsUp,
      //                 size: 40,
      //               ),
      //               iconText: 'Like',
      //             ),
      //           ),
      //         ),
      //         Container(
      //           width: 200.0,
      //           height: 200.0,
      //           color: Colors.blueGrey.shade100,
      //           child: AnimatedAlign(
      //             alignment: shareAlignment,
      //             duration: const Duration(seconds: 1),
      //             curve: Curves.fastOutSlowIn,
      //             child: FaIconButtonWidget(
      //               mainAxisAlignment: shareMainAlignment,
      //               onPressed: () {
      //                 setState(() {
      //                   shareAlignment = Alignment.topRight;
      //                   shareMainAlignment = MainAxisAlignment.start;
      //                 });
      //               },
      //               backgroundColor: Colors.deepPurpleAccent,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.share,
      //                 size: 40,
      //               ),
      //               iconText: 'Share',
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container(
      //           width: 200.0,
      //           height: 200.0,
      //           color: Colors.blueGrey.shade100,
      //           child: AnimatedAlign(
      //             alignment: commentAlignment,
      //             duration: const Duration(seconds: 1),
      //             curve: Curves.fastOutSlowIn,
      //             child: FaIconButtonWidget(
      //               mainAxisAlignment: commentMainAlignment,
      //               onPressed: () {
      //                 setState(() {
      //                   commentAlignment = Alignment.bottomLeft;
      //                   commentMainAlignment = MainAxisAlignment.end;
      //                 });
      //               },
      //               backgroundColor: Colors.amber,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.commentDots,
      //                 size: 40,
      //               ),
      //               iconText: 'Comment',
      //             ),
      //           ),
      //         ),
      //         Container(
      //           width: 200.0,
      //           height: 200.0,
      //           color: Colors.blueGrey.shade100,
      //           child: AnimatedAlign(
      //             alignment: subscribeAlignment,
      //             duration: const Duration(seconds: 1),
      //             curve: Curves.fastOutSlowIn,
      //             child: FaIconButtonWidget(
      //               mainAxisAlignment: subscribeMainAlignment,
      //               onPressed: () {
      //                 setState(() {
      //                   subscribeAlignment = Alignment.bottomRight;
      //                   subscribeMainAlignment = MainAxisAlignment.end;
      //                 });
      //               },
      //               backgroundColor: Colors.redAccent,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.bell,
      //                 size: 40,
      //               ),
      //               iconText: 'Subscribe',
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
