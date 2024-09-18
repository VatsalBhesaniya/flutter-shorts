import 'package:flutter/material.dart';

import 'package:flutter_shorts/shapes/triangle.dart';

class TriangleWidget extends StatelessWidget {
  const TriangleWidget({
    Key? key,
    this.color = Colors.amberAccent,
    this.height = 20,
    this.width = 20,
  }) : super(key: key);

  final Color color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TriangleShape(),
      child: Container(
        color: color,
        width: width,
        height: height,
      ),
    );
  }
}
