import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FaIconButtonWidget extends StatelessWidget {
  const FaIconButtonWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.onPressed,
    required this.backgroundColor,
    required this.shadowColor,
    required this.faIcon,
    this.iconText,
    this.textColor = Colors.black,
  });

  final MainAxisAlignment mainAxisAlignment;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color shadowColor;
  final FaIcon faIcon;
  final String? iconText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        ElevatedButton(
          onPressed: onPressed,
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
        if (iconText != null)
          Text(
            iconText!,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}
