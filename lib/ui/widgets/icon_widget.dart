// import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/like_share_subscribe.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconyWidgetState();
}

class _IconyWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          Icon(
            size: 400,
            color: Colors.lightBlue,
            shadows: <Shadow>[
              BoxShadow(
                color: Colors.orange,
                offset: Offset(8, 8),
                spreadRadius: 4,
                blurRadius: 20,
                blurStyle: BlurStyle.solid,
              ),
            ],
            Icons.flutter_dash_rounded,
          ),
          Icon(
            size: 400,
            textDirection: TextDirection.rtl,
            Icons.arrow_back,
          ),
        ],
      ),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: <Widget>[
      //     const LikeShareSubscribe(),
      //     _buildIcon(),
      //     const Icon(
      //       size: 400,
      //       textDirection: TextDirection.rtl,
      //       Icons.arrow_back,
      //     ),
      //     Transform(
      //       alignment: Alignment.center,
      //       transform: Matrix4.rotationX(pi),
      //       child: _buildIcon(),
      //     ),
      //     Transform(
      //       alignment: Alignment.center,
      //       transform: Matrix4.rotationY(pi),
      //       child: Transform(
      //         alignment: Alignment.center,
      //         transform: Matrix4.rotationX(pi),
      //         child: _buildIcon(),
      //       ),
      //     ),
      //     Transform(
      //       alignment: Alignment.center,
      //       transform: Matrix4.rotationY(pi),
      //       child: _buildIcon(),
      //     ),
      //   ],
      // ),
    );
  }

  // Icon _buildIcon() {
  //   return const Icon(
  //     size: 400,
  //     color: Colors.lightBlue,
  //     shadows: <Shadow>[
  //       BoxShadow(
  //         color: Colors.orange,
  //         offset: Offset(8, 8),
  //         spreadRadius: 4,
  //         blurRadius: 20,
  //         blurStyle: BlurStyle.solid,
  //       ),
  //     ],
  //     Icons.flutter_dash_rounded,
  //   );
  // }
}
