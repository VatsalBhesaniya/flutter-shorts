import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool showFirstChild = true;
  bool showLike = true;
  bool showComment = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated CrossFade'),
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Colors.blueAccent,
      body: GestureDetector(
        onTap: () {
          setState(() {
            showFirstChild = !showFirstChild;
          });
        },
        child: Center(
          child: AnimatedCrossFade(
            duration: const Duration(seconds: 2),
            firstChild: Image.asset(
              'assets/images/pigeon1.jpg',
              fit: BoxFit.cover,
            ),
            secondChild: Image.asset(
              'assets/images/pigeon2.jpg',
              fit: BoxFit.cover,
            ),
            crossFadeState: showFirstChild
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstCurve: Curves.decelerate,
            secondCurve: Curves.ease,
            sizeCurve: Curves.fastLinearToSlowEaseIn,
            reverseDuration: const Duration(
              seconds: 3,
            ),
            alignment: Alignment.center,
            excludeBottomFocus: true,
            layoutBuilder: (
              topChild,
              topChildKey,
              bottomChild,
              bottomChildKey,
            ) {
              return Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    key: topChildKey,
                    child: topChild,
                  ),
                  Positioned(
                    key: bottomChildKey,
                    child: bottomChild,
                  ),
                ],
              );
            },
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     const SizedBox(height: 40),
      //     Center(
      //       child: GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             showLike = !showLike;
      //           });
      //         },
      //         child: AnimatedCrossFade(
      //           duration: const Duration(seconds: 1),
      //           firstChild: Container(
      //             color: Colors.lightBlue,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.lightBlue,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.thumbsUp,
      //                 size: 150,
      //               ),
      //             ),
      //           ),
      //           secondChild: Container(
      //             color: Colors.teal,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.lime,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.share,
      //                 size: 150,
      //               ),
      //             ),
      //           ),
      //           crossFadeState: showLike
      //               ? CrossFadeState.showFirst
      //               : CrossFadeState.showSecond,
      //           firstCurve: Curves.decelerate,
      //           secondCurve: Curves.ease,
      //           sizeCurve: Curves.fastLinearToSlowEaseIn,
      //           alignment: Alignment.center,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(height: 40),
      //     Center(
      //       child: GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             showComment = !showComment;
      //           });
      //         },
      //         child: AnimatedCrossFade(
      //           duration: const Duration(seconds: 1),
      //           firstChild: Container(
      //             color: Colors.purple.shade200,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.deepOrange,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.commentDots,
      //                 size: 150,
      //               ),
      //             ),
      //           ),
      //           secondChild: Container(
      //             color: Colors.redAccent,
      //             child: const FaIconButtonWidget(
      //               backgroundColor: Colors.redAccent,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.bell,
      //                 size: 150,
      //               ),
      //             ),
      //           ),
      //           crossFadeState: showComment
      //               ? CrossFadeState.showFirst
      //               : CrossFadeState.showSecond,
      //           firstCurve: Curves.decelerate,
      //           secondCurve: Curves.ease,
      //           sizeCurve: Curves.fastLinearToSlowEaseIn,
      //           alignment: Alignment.center,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
