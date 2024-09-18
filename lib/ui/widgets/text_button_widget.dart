import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({super.key});

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  String message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Button Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildIconButton(
                    backgroundColor: Colors.orangeAccent,
                    shadowColor: Colors.red,
                    faIcon: const FaIcon(FontAwesomeIcons.thumbsUp),
                  ),
                  _buildIconButton(
                    backgroundColor: Colors.lightBlue,
                    shadowColor: Colors.green,
                    faIcon: const FaIcon(FontAwesomeIcons.share),
                  ),
                  _buildIconButton(
                    backgroundColor: Colors.teal,
                    shadowColor: Colors.blue,
                    faIcon: const FaIcon(FontAwesomeIcons.bell),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              _disabledTextButton(),
              const SizedBox(height: 16),
              _simpleTextButton(),
              const SizedBox(height: 32),
              _textButtonWithStyle1(),
              const SizedBox(height: 32),
              _textButtonWithDefaultStyle(),
              // _textButtonWithLongPress(),
            ],
          ),
        ),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(16),
      //   child: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         const SizedBox(height: 32),
      //         TextButton(
      //           onPressed: () {
      //             setState(() {
      //               message = 'Hey you pressed me!';
      //             });
      //           },
      //           onLongPress: () {
      //             setState(() {
      //               message = 'Hey you pressed me so hard! 🤢';
      //             });
      //           },
      //           style: TextButton.styleFrom(
      //             padding: const EdgeInsets.symmetric(
      //               horizontal: 32,
      //               vertical: 8,
      //             ),
      //             backgroundColor: Colors.redAccent,
      //             elevation: 8,
      //             shadowColor: Colors.deepOrange,
      //             side: const BorderSide(
      //               color: Colors.lightBlue,
      //               width: 1,
      //             ),
      //             shape: const StadiumBorder(),
      //           ),
      //           child: Text(
      //             'Press Me!',
      //             style: const TextStyle(
      //               fontSize: 24,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 32),
      //         Text(
      //           message,
      //           style: const TextStyle(
      //             fontSize: 18,
      //             color: Colors.black,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  ElevatedButton _buildIconButton({
    required Color backgroundColor,
    required Color shadowColor,
    required FaIcon faIcon,
  }) {
    return ElevatedButton(
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
    );
  }

  TextButton _disabledTextButton() {
    return const TextButton(
      onPressed: null,
      child: Text(
        'Disabled',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  TextButton _simpleTextButton() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Enabled',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  TextButton _textButtonWithStyle1() {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        // backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlue),
        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 8,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.pink;
            }
            if (states.contains(MaterialState.disabled)) {
              return Colors.grey;
            }
            if (states.contains(MaterialState.focused)) {
              return Colors.lime;
            }
            return Colors.redAccent;
          },
        ),
      ),
      child: const Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  TextButton _textButtonWithDefaultStyle() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        elevation: 8,
        shadowColor: Colors.red,
        side: const BorderSide(
          color: Colors.lightBlue,
          width: 1,
        ),
        // shape: const BeveledRectangleBorder(),
        // shape: const CircleBorder(),
        // shape: const ContinuousRectangleBorder(),
        // shape: const OvalBorder(),
        // shape: const RoundedRectangleBorder(),
        // shape: const StarBorder(),
        // shape: const StarBorder.polygon(),
        // shape: const StadiumBorder(),
      ),
      child: const Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  // TextButton _textButtonWithLongPress() {
  //   return TextButton(
  //     onPressed: () {
  //       setState(() {
  //         message = 'Hey you pressed me!';
  //       });
  //     },
  //     onLongPress: () {
  //       setState(() {
  //         message = 'Hey you pressed me so hard! 🤢';
  //       });
  //     },
  //     style: TextButton.styleFrom(
  //       backgroundColor: Colors.redAccent,
  //       padding: const EdgeInsets.symmetric(
  //         horizontal: 32,
  //         vertical: 8,
  //       ),
  //       elevation: 8,
  //       shadowColor: Colors.red,
  //       side: const BorderSide(
  //         color: Colors.lightBlue,
  //         width: 1,
  //       ),
  //       shape: const StadiumBorder(),
  //     ),
  //     child: const Text(
  //       'Press Me!',
  //       style: TextStyle(
  //         fontSize: 18,
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }
}
