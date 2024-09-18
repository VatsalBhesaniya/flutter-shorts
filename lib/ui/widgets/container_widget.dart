import 'package:flutter/material.dart';
import 'package:flutter_shorts/packages/arc_text/arc_text.dart';
import 'package:flutter_shorts/packages/arc_text/enums.dart';
import 'package:flutter_shorts/ui/widgets/triangle_widget.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildContainer(),
          _buildContainerCartoon(),
        ],
      ),
    );
  }

  Center _buildContainer() {
    return Center(
      child: Container(
        height: 100,
        width: 300,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        // decoration: const BoxDecoration(
        //   color: Colors.lightBlue,
        //   shape: BoxShape.circle,
        // ),
        color: Colors.lightBlue,
        // alignment: Alignment.center,
        // constraints: const BoxConstraints.tightForFinite(
        //   width: 200,
        //   height: 400,
        // ),
        transform: Matrix4.rotationZ(0.05),
        child: const Text(
          'Hey I am Container!',
          style: TextStyle(
            color: Colors.brown,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Center _buildContainerCartoon() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.lightBlue,
          shape: BoxShape.circle,
        ),
        constraints: const BoxConstraints.tightForFinite(
          width: 200,
          height: 200,
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 60),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const TriangleWidget(
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const Center(
              child: ArcText(
                radius: 70,
                direction: Direction.counterClockwise,
                placement: Placement.inside,
                text: 'Container!',
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                ),
                startAngle: -2.143,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
