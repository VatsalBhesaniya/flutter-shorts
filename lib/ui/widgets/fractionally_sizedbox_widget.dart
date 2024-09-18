import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  const FractionallySizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: SizedBox.expand(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          alignment: FractionalOffset.center,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.orange.shade200,
              border: Border.all(
                color: Colors.blue,
                width: 16,
              ),
            ),
          ),
        ),
      ),
      // body: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     const SizedBox(height: 20),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         _buildBox(
      //           icon: const FaIconButtonWidget(
      //             backgroundColor: Colors.lightBlue,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.thumbsUp,
      //               size: 40,
      //             ),
      //             iconText: 'Like',
      //           ),
      //         ),
      //         _buildBox(
      //           icon: const FaIconButtonWidget(
      //             backgroundColor: Colors.blueGrey,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.share,
      //               size: 40,
      //             ),
      //             iconText: 'Share',
      //           ),
      //         ),
      //       ],
      //     ),
      //     const SizedBox(height: 20),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         _buildBox(
      //           icon: const FaIconButtonWidget(
      //             backgroundColor: Colors.teal,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.commentDots,
      //               size: 40,
      //             ),
      //             iconText: 'Comment',
      //           ),
      //         ),
      //         _buildBox(
      //           icon: const FaIconButtonWidget(
      //             backgroundColor: Colors.redAccent,
      //             shadowColor: Colors.red,
      //             faIcon: FaIcon(
      //               FontAwesomeIcons.bell,
      //               size: 40,
      //             ),
      //             iconText: 'Subscribe',
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }

  // SizedBox _buildBox({
  //   required Widget icon,
  // }) {
  //   return SizedBox(
  //     height: 200,
  //     width: 200,
  //     child: FractionallySizedBox(
  //       widthFactor: 1,
  //       heightFactor: 1,
  //       alignment: FractionalOffset.center,
  //       child: DecoratedBox(
  //         decoration: BoxDecoration(
  //           color: Colors.orange.shade200,
  //           border: Border.all(
  //             color: Colors.blue,
  //             width: 8,
  //           ),
  //         ),
  //         child: icon,
  //       ),
  //     ),
  //   );
  // }
}
