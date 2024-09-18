import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_shorts/helper/icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OpenContainerWidget extends StatelessWidget {
  const OpenContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Container Animation'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: OpenContainer(
          transitionType: ContainerTransitionType.fadeThrough,
          transitionDuration: const Duration(seconds: 1),
          openShape: const BeveledRectangleBorder(),
          openBuilder: (BuildContext context, VoidCallback _) {
            return const OpenContainerNewScreen();
          },
          openColor: Colors.purple,
          openElevation: 8,
          middleColor: Colors.redAccent,
          closedElevation: 8,
          closedColor: Colors.blueAccent,
          closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),
          onClosed: (data) {
            _showSnackBar(context, data);
          },
          tappable: true,
          closedBuilder: (
            BuildContext context,
            VoidCallback openContainer,
          ) {
            return const SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Icon(
                  Icons.open_in_new_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            );
          },
        ),
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       const SizedBox(height: 40),
      //       _buildOpenContainer(
      //         message: 'Hurry Up! Press Like Button',
      //         icon: const FaIconButtonWidget(
      //           backgroundColor: Colors.pink,
      //           shadowColor: Colors.red,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.thumbsUp,
      //             size: 40,
      //           ),
      //           iconText: 'Like',
      //         ),
      //       ),
      //       _buildOpenContainer(
      //         message: 'Let\'s Share it with your friends',
      //         icon: const FaIconButtonWidget(
      //           backgroundColor: Colors.deepPurpleAccent,
      //           shadowColor: Colors.red,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.share,
      //             size: 40,
      //           ),
      //           iconText: 'Share',
      //         ),
      //       ),
      //       _buildOpenContainer(
      //         message: 'Comment your feedback below',
      //         icon: const FaIconButtonWidget(
      //           backgroundColor: Colors.amber,
      //           shadowColor: Colors.red,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.commentDots,
      //             size: 40,
      //           ),
      //           iconText: 'Comment',
      //         ),
      //       ),
      //       _buildOpenContainer(
      //         message: 'Subscribe for More \n Thank You \n 🥳',
      //         icon: const FaIconButtonWidget(
      //           backgroundColor: Colors.redAccent,
      //           shadowColor: Colors.red,
      //           faIcon: FaIcon(
      //             FontAwesomeIcons.bell,
      //             size: 40,
      //           ),
      //           iconText: 'Subscribe',
      //           textColor: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  // OpenContainer<Object?> _buildOpenContainer({
  //   required FaIconButtonWidget icon,
  //   required String message,
  // }) {
  //   return OpenContainer(
  //     transitionType: ContainerTransitionType.fadeThrough,
  //     transitionDuration: const Duration(seconds: 1),
  //     openShape: const StadiumBorder(),
  //     openBuilder: (BuildContext context, VoidCallback _) {
  //       return OpenContainerNewScreen(
  //         message: message,
  //       );
  //     },
  //     openColor: Colors.purple,
  //     openElevation: 8,
  //     middleColor: Colors.redAccent,
  //     closedElevation: 8,
  //     closedColor: Colors.blueAccent,
  //     closedShape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(28),
  //       ),
  //     ),
  //     closedBuilder: (
  //       BuildContext context,
  //       VoidCallback openContainer,
  //     ) {
  //       return SizedBox(
  //         height: 140,
  //         width: 140,
  //         child: Center(
  //           child: icon,
  //         ),
  //       );
  //     },
  //   );
  // }

  void _showSnackBar(BuildContext context, Object? data) {
    if (data != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.blueGrey,
          content: Text(
            data.toString(),
            style: const TextStyle(fontSize: 28),
          ),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.only(bottom: 500),
        ),
      );
    }
  }
}

class OpenContainerNewScreen extends StatelessWidget {
  const OpenContainerNewScreen({
    super.key,
    this.message,
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'New Screen',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.chevron_left_rounded,
                    size: 48,
                  ),
                  Text(
                    'Go Back',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context, 'Data from new screen');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.chevron_left_rounded,
                    size: 48,
                  ),
                  Text(
                    'Go Back with message',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Container(
      //   color: Colors.blueAccent,
      //   padding: const EdgeInsets.all(32),
      //   child: Column(
      //     children: [
      //       const SizedBox(height: 180),
      //       Text(
      //         message ?? '',
      //         style: const TextStyle(
      //           color: Colors.white,
      //           fontSize: 40,
      //           fontWeight: FontWeight.bold,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
