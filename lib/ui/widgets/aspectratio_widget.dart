import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({super.key});

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Container(
            height: 200.0,
            width: double.infinity,
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.orange,
                child: _buildIconButton(
                  backgroundColor: Colors.redAccent,
                  shadowColor: Colors.red,
                  faIcon: const FaIcon(
                    FontAwesomeIcons.thumbsUp,
                    size: 40,
                  ),
                  iconText: 'Like',
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 200,
            height: 200,
            color: Colors.redAccent,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 2.0,
              child: Container(
                width: 100,
                height: 50,
                color: Colors.amberAccent,
                child: _buildIconButton(
                  backgroundColor: Colors.lightBlue,
                  shadowColor: Colors.green,
                  faIcon: const FaIcon(
                    FontAwesomeIcons.share,
                    size: 20,
                  ),
                  iconText: 'Share',
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            height: 200,
            width: 200,
            color: Colors.brown,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 0.5,
              child: Container(
                width: 100,
                height: 50,
                color: Colors.lime,
                child: _buildIconButton(
                  backgroundColor: Colors.teal,
                  shadowColor: Colors.blue,
                  faIcon: const FaIcon(
                    FontAwesomeIcons.bell,
                    size: 40,
                  ),
                  iconText: 'Subscribe',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required Color backgroundColor,
    required Color shadowColor,
    required FaIcon faIcon,
    required String iconText,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
            elevation: 8,
            foregroundColor: Colors.white,
            shadowColor: shadowColor,
            shape: const CircleBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: faIcon,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          iconText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
