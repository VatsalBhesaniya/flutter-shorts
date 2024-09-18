import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikeShareSubscribe extends StatefulWidget {
  const LikeShareSubscribe({super.key});

  @override
  State<LikeShareSubscribe> createState() => _LikeShareSubscribeState();
}

class _LikeShareSubscribeState extends State<LikeShareSubscribe> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIconButton(
            backgroundColor: Colors.orangeAccent,
            shadowColor: Colors.red,
            faIcon: const FaIcon(
              FontAwesomeIcons.thumbsUp,
              size: 40,
            ),
            iconText: 'Like',
          ),
          _buildIconButton(
            backgroundColor: Colors.lightBlue,
            shadowColor: Colors.green,
            faIcon: const FaIcon(
              FontAwesomeIcons.share,
              size: 40,
            ),
            iconText: 'Share',
          ),
          _buildIconButton(
            backgroundColor: Colors.teal,
            shadowColor: Colors.blue,
            faIcon: const FaIcon(
              FontAwesomeIcons.bell,
              size: 40,
            ),
            iconText: 'Subscribe',
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
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
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
