import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacityLevel = 1.0;
  // double likeOpacityLevel = 0;
  // double shareOpacityLevel = 0;
  // double commentOpacityLevel = 0;
  // double subscribeOpacityLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 2),
            curve: Curves.elasticInOut,
            child: Image.asset(
              'assets/images/city_miniature.jpg',
            ),
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              setState(() {
                opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
              });
            },
            color: Colors.orangeAccent,
            child: const Text(
              'Animate Opacity',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     children: <Widget>[
      //       const SizedBox(height: 20),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           _buildButton(
      //             opacity: likeOpacityLevel,
      //             curve: Curves.easeInCirc,
      //             icon: const FaIconButtonWidget(
      //               backgroundColor: Colors.lightBlue,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.thumbsUp,
      //                 size: 80,
      //               ),
      //             ),
      //             buttonText: 'Like',
      //             buttonColor: Colors.lightBlue,
      //             onPressed: () {
      //               setState(() {
      //                 likeOpacityLevel = likeOpacityLevel == 0 ? 1.0 : 0.0;
      //               });
      //             },
      //           ),
      //           _buildButton(
      //             opacity: shareOpacityLevel,
      //             curve: Curves.easeInOutCubic,
      //             icon: const FaIconButtonWidget(
      //               backgroundColor: Colors.lime,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.share,
      //                 size: 80,
      //               ),
      //             ),
      //             buttonText: 'Share',
      //             buttonColor: Colors.lime,
      //             onPressed: () {
      //               setState(() {
      //                 shareOpacityLevel = shareOpacityLevel == 0 ? 1.0 : 0.0;
      //               });
      //             },
      //           ),
      //         ],
      //       ),
      //       const SizedBox(height: 40),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           _buildButton(
      //             opacity: commentOpacityLevel,
      //             curve: Curves.elasticIn,
      //             icon: const FaIconButtonWidget(
      //               backgroundColor: Colors.deepOrange,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.commentDots,
      //                 size: 80,
      //               ),
      //             ),
      //             buttonText: 'Comment',
      //             buttonColor: Colors.deepOrange,
      //             onPressed: () {
      //               setState(() {
      //                 commentOpacityLevel =
      //                     commentOpacityLevel == 0 ? 1.0 : 0.0;
      //               });
      //             },
      //           ),
      //           _buildButton(
      //             opacity: subscribeOpacityLevel,
      //             curve: Curves.bounceInOut,
      //             icon: const FaIconButtonWidget(
      //               backgroundColor: Colors.redAccent,
      //               shadowColor: Colors.red,
      //               faIcon: FaIcon(
      //                 FontAwesomeIcons.bell,
      //                 size: 80,
      //               ),
      //             ),
      //             buttonText: 'Subscribe',
      //             buttonColor: Colors.redAccent,
      //             onPressed: () {
      //               setState(() {
      //                 subscribeOpacityLevel =
      //                     subscribeOpacityLevel == 0 ? 1.0 : 0.0;
      //               });
      //             },
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  // Column _buildButton({
  //   required double opacity,
  //   required Curve curve,
  //   required FaIconButtonWidget icon,
  //   required String buttonText,
  //   required Color buttonColor,
  //   required void Function() onPressed,
  // }) {
  //   return Column(
  //     children: [
  //       AnimatedOpacity(
  //         opacity: opacity,
  //         duration: const Duration(seconds: 2),
  //         curve: curve,
  //         child: icon,
  //       ),
  //       MaterialButton(
  //         onPressed: onPressed,
  //         color: buttonColor,
  //         child: Text(
  //           buttonText,
  //           style: const TextStyle(fontSize: 24),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
