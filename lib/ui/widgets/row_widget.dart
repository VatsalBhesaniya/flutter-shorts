import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 48,
                ),
                const Expanded(
                  child: Text(
                    'This is very long text to check overflow',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.lightBlue,
                  child: const Text(
                    'Row Item',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




















































// body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Center(
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const FlutterLogo(
//                   size: 48,
//                 ),
//                 Expanded(
//                   child: Text(
//                     'This is very long text to check overflow',
//                     style: TextStyle(fontSize: 24),
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   color: Colors.blueGrey,
//                   child: const Text(
//                     'Row Item',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),