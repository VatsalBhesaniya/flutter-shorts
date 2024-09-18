import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  String message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            children: [
              const SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 8,
                      ),
                      elevation: 8,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.red,
                      shape: const CircleBorder(),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(FontAwesomeIcons.thumbsUp),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 8,
                      ),
                      elevation: 8,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.green,
                      shape: const CircleBorder(),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(FontAwesomeIcons.share),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 8,
                      ),
                      elevation: 8,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.blue,
                      shape: const CircleBorder(),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(FontAwesomeIcons.bell),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const SizedBox(height: 32),
              _buildSimpleButton(),
              const SizedBox(height: 32),
              _buildSimpleDisabledButton(),
              const SizedBox(height: 32),
              _buildButtonWithStyle1(),
              const SizedBox(height: 32),
              _buildButtonWithStyle2(),
              const SizedBox(height: 32),
              _buildButtonWithBorder(),
              const SizedBox(height: 32),
              _buildButtonWithLongPress(),
            ],
          ),
        ),
      ),
    );
  }

// body: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildSimpleButton(),
//           const SizedBox(height: 32),
//           _buildSimpleDisabledButton(),
//           const SizedBox(height: 32),
//           _buildButtonWithStyle1(),
//           const SizedBox(height: 32),
//           _buildButtonWithStyle2(),
//           const SizedBox(height: 32),
//           _buildButtonWithBorder(),
//           const SizedBox(height: 32),
//           _buildButtonWithDefaultStyle1(),
//           const SizedBox(height: 32),
//           _buildButtonWithLongPress(),
//           Text(
//             message,
//             style: const TextStyle(
//               fontSize: 18,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     ),

  ElevatedButton _buildSimpleButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          message = 'Hey you pressed me!';
        });
      },
      child: const Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

  ElevatedButton _buildSimpleDisabledButton() {
    return const ElevatedButton(
      onPressed: null,
      child: Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  ElevatedButton _buildButtonWithStyle1() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          message = 'Hey you pressed me!';
        });
      },
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlue),
        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 8,
          ),
        ),
      ),
      child: const Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  ElevatedButton _buildButtonWithStyle2() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          message = 'Hey you pressed me!';
        });
      },
      style: ButtonStyle(
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
            return Colors.teal;
          },
        ),
      ),
      child: const Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  // ElevatedButton _buildButtonWithDefaultStyle1() {
  //   return ElevatedButton(
  //     onPressed: () {
  //       setState(() {
  //         message = 'Hey you pressed me!';
  //       });
  //     },
  //     style: ElevatedButton.styleFrom(
  //       backgroundColor: Colors.teal,
  //       padding: const EdgeInsets.symmetric(
  //         horizontal: 32,
  //         vertical: 8,
  //       ),
  //       elevation: 8,
  //       shadowColor: Colors.red,
  //       // shape: const BeveledRectangleBorder(),
  //       // shape: const CircleBorder(),
  //       // shape: const ContinuousRectangleBorder(),
  //       // shape: const OvalBorder(),
  //       // shape: const RoundedRectangleBorder(),
  //       // shape: const StarBorder(),
  //       // shape: const StarBorder.polygon(),
  //       // shape: const StadiumBorder(),
  //     ),
  //     child: const Text(
  //       'Press Me!',
  //       style: TextStyle(
  //         fontSize: 24,
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }

  ElevatedButton _buildButtonWithBorder() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          message = 'Hey you pressed me!';
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        elevation: 8,
        shadowColor: Colors.red,
        side: const BorderSide(color: Colors.deepOrangeAccent, width: 5),
        shape: const StadiumBorder(),
      ),
      child: const Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  ElevatedButton _buildButtonWithLongPress() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          message = 'Hey you pressed me!';
        });
      },
      onLongPress: () {
        setState(() {
          message = 'Hey you pressed me so hard! 🤢';
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        elevation: 8,
        shadowColor: Colors.red,
        shape: const StadiumBorder(),
      ),
      child: const Text(
        'Press Me!',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }

  // ElevatedButton _buildElevatedButton() {
  //   return ElevatedButton(
  //     onPressed: () {
  //       setState(() {
  //         message = 'Hey you pressed me!';
  //       });
  //     },
  //     // onLongPress: () {
  //     //   setState(() {
  //     //     message = 'Hey you pressed me so hard! 🤢';
  //     //   });
  //     // },
  //     // style: ElevatedButton.styleFrom(
  //     //   backgroundColor: Colors.blueGrey,
  //     //   padding: const EdgeInsets.symmetric(
  //     //     horizontal: 32,
  //     //     vertical: 8,
  //     //   ),
  //     //   elevation: 8,
  //     //   shadowColor: Colors.red,
  //     //   // shape: const BeveledRectangleBorder(),
  //     //   // shape: const CircleBorder(),
  //     //   // shape: const ContinuousRectangleBorder(),
  //     //   // shape: const OvalBorder(),
  //     //   // shape: const RoundedRectangleBorder(),
  //     //   // shape: const StadiumBorder(),
  //     //   // shape: const StarBorder(),
  //     //   // shape: const StarBorder.polygon(),
  //     // ),
  //     // style: ButtonStyle(
  //     //   padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
  //     //     EdgeInsets.symmetric(
  //     //       horizontal: 32,
  //     //       vertical: 8,
  //     //     ),
  //     //   ),
  //     //   // backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
  //     //   backgroundColor: MaterialStateProperty.resolveWith<Color?>(
  //     //     (states) {
  //     //       if (states.contains(MaterialState.pressed)) {
  //     //         return Colors.pink;
  //     //       }
  //     //       if (states.contains(MaterialState.disabled)) {
  //     //         return Colors.grey;
  //     //       }
  //     //       if (states.contains(MaterialState.focused)) {
  //     //         return Colors.lime;
  //     //       }
  //     //       return Colors.blueGrey;
  //     //     },
  //     //   ),
  //     // ),
  //     child: const Text(
  //       'Press Me!',
  //       style: TextStyle(
  //         fontSize: 24,
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }
}
