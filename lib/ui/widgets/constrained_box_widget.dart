import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  const ConstrainedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBox Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              minHeight: 100,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lime,
              ),
              child: const Text(
                'Press Me!',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              maxWidth: 200,
              minHeight: 200,
              maxHeight: 400,
            ),
            child: const Text(
              'Hello World',
              style: TextStyle(fontSize: 40),
            ),
          ),
          ConstrainedBox(
            // constraints: const BoxConstraints.expand(),
            // constraints: BoxConstraints.tight(const Size(200, 200)),
            // constraints: const BoxConstraints.tightFor(),
            constraints: const BoxConstraints.tightForFinite(),
            child: Container(
              color: Colors.red,
              child: const Text(
                'Hello World!',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     children: <Widget>[
      //       ConstrainedBox(
      //         constraints: const BoxConstraints(
      //           minWidth: 50,
      //         ),
      //         child: const FaIconButtonWidget(
      //           backgroundColor: Colors.redAccent,
      //           shadowColor: Colors.red,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.thumbsUp,
      //             size: 40,
      //           ),
      //           iconText: 'Like',
      //         ),
      //       ),
      //       ConstrainedBox(
      //         constraints: const BoxConstraints(
      //           minHeight: 100,
      //           maxHeight: 200,
      //         ),
      //         child: const FaIconButtonWidget(
      //           backgroundColor: Colors.lightBlue,
      //           shadowColor: Colors.green,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.share,
      //             size: 40,
      //           ),
      //           iconText: 'Share',
      //         ),
      //       ),
      //       ConstrainedBox(
      //         constraints: const BoxConstraints.tightFor(),
      //         child: const FaIconButtonWidget(
      //           backgroundColor: Colors.teal,
      //           shadowColor: Colors.blue,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.bell,
      //             size: 40,
      //           ),
      //           iconText: 'Subscribe',
      //         ),
      //       ),
      //       ConstrainedBox(
      //         constraints: const BoxConstraints(
      //           minHeight: 100,
      //           maxHeight: 200,
      //         ),
      //         child: const FaIconButtonWidget(
      //           backgroundColor: Colors.lime,
      //           shadowColor: Colors.red,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.commentDots,
      //             size: 40,
      //           ),
      //           iconText: 'Comment',
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
