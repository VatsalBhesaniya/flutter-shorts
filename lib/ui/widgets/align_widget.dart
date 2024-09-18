import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<AlignWidget> createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Container(
          height: 500.0,
          width: 400.0,
          color: Colors.orange.shade200,
          child: const Align(
            // alignment: Alignment.center,
            // alignment: Alignment(0.4, 0.8),
            alignment: FractionalOffset(0.2, 0.2),
            child: FlutterLogo(
              size: 200,
            ),
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(32),
      //   child: Container(
      //     height: 500.0,
      //     width: 400.0,
      //     color: Colors.orange.shade200,
      //     padding: const EdgeInsets.all(16),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: <Widget>[
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             _buildIconButton(
      //               backgroundColor: Colors.lightBlue,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.thumbsUp,
      //                 size: 40,
      //               ),
      //               iconText: 'Like',
      //             ),
      //             _buildIconButton(
      //               backgroundColor: Colors.blueGrey,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.share,
      //                 size: 40,
      //               ),
      //               iconText: 'Share',
      //             ),
      //           ],
      //         ),
      //         const Align(
      //           alignment: Alignment.center,
      //           child: FlutterLogo(size: 200),
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             _buildIconButton(
      //               backgroundColor: Colors.lime,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.commentDots,
      //                 size: 40,
      //               ),
      //               iconText: 'Comment',
      //             ),
      //             _buildIconButton(
      //               backgroundColor: Colors.red,
      //               shadowColor: Colors.red,
      //               faIcon: const FaIcon(
      //                 FontAwesomeIcons.bell,
      //                 size: 40,
      //               ),
      //               iconText: 'Subscribe',
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  // Widget _buildIconButton({
  //   required Color backgroundColor,
  //   required Color shadowColor,
  //   required FaIcon faIcon,
  //   required String iconText,
  // }) {
  //   return Column(
  //     children: [
  //       ElevatedButton(
  //         onPressed: () {},
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: backgroundColor,
  //           padding: const EdgeInsets.symmetric(
  //             horizontal: 32,
  //             vertical: 8,
  //           ),
  //           elevation: 8,
  //           foregroundColor: Colors.white,
  //           shadowColor: shadowColor,
  //           shape: const CircleBorder(),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: faIcon,
  //         ),
  //       ),
  //       const SizedBox(height: 16),
  //       Text(
  //         iconText,
  //         style: const TextStyle(
  //           fontSize: 18,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
