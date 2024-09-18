import 'package:flutter/material.dart';
import 'package:flutter_shorts/ui/flutter%20animations/animated_alignment_widget.dart';
import 'package:flutter_shorts/ui/flutter%20animations/animated_cross_fade_widget.dart';
import 'package:flutter_shorts/ui/flutter%20animations/animated_opacity_widget.dart';
import 'package:flutter_shorts/ui/flutter%20animations/open_container_widget.dart';

class FlutterAnimations extends StatelessWidget {
  const FlutterAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _buildButton(
              context: context,
              title: 'Open Container Widget',
              widget: const OpenContainerWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Animated Opacity',
              widget: const AnimatedOpacityWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Animated Align',
              widget: const AnimatedAlignWidget(),
            ),
            _buildButton(
              context: context,
              title: 'Animated CrossFade',
              widget: const AnimatedCrossFadeWidget(),
            ),
            // _buildButton(
            //   context: context,
            //   title: 'SharedAxisTransition Widget',
            //   widget: const SharedAxisTransitionWidget(),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required String title,
    required Widget widget,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          );
        },
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
