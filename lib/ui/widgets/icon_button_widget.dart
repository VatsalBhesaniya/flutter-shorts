import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({super.key});

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  static const List<(Color? background, IconData, String)> customizations =
      <(Color?, IconData, String)>[
    (
      Color(0xfff8e287),
      Icons.thumb_up_alt_sharp,
      'Like',
    ),
    (
      Color(0xffd6e3ff),
      Icons.share_sharp,
      'Share',
    ),
    (
      Color(0xfffad8fd),
      Icons.subscriptions_sharp,
      'Subscribe',
    ),
  ];
  int index = 0;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Icon Button Widget'),
      //   elevation: 16,
      // ),

      backgroundColor: Color(0xFF191c20),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  index = (index + 1) % customizations.length;
                });
              },
              icon: Icon(
                customizations[index].$2,
                color: customizations[index].$1,
                size: 124,
              ),
            ),
            Spacer(),
            Text(
              customizations[index].$3,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           // Icon button
      //           IconButton(
      //             icon: const Icon(Icons.smartphone),
      //             onPressed: () {},
      //           ),
      //           // Filled icon button
      //           IconButton.filled(
      //             onPressed: () {},
      //             icon: const Icon(Icons.smartphone),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           // Filled tonal icon button
      //           IconButton.filledTonal(
      //             onPressed: () {},
      //             icon: const Icon(Icons.smartphone),
      //           ),
      //           // Outlined icon button
      //           IconButton.outlined(
      //             onPressed: () {},
      //             icon: const Icon(Icons.smartphone),
      //           ),
      //         ],
      //       ),
      //       Divider(
      //         height: 1,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Text('Enabled', style: TextStyle(fontSize: 18)),
      //           SizedBox(width: 12),
      //           Text('Disabled', style: TextStyle(fontSize: 18)),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //           IconButton(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: () {
      //               setState(() {
      //                 isSelected = !isSelected;
      //               });
      //             },
      //           ),
      //           const SizedBox(width: 10),
      //           IconButton(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: null,
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //           IconButton.filled(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: () {
      //               setState(() {
      //                 isSelected = !isSelected;
      //               });
      //             },
      //           ),
      //           const SizedBox(width: 10),
      //           IconButton.filled(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: null,
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //           IconButton.filledTonal(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: () {
      //               setState(() {
      //                 isSelected = !isSelected;
      //               });
      //             },
      //           ),
      //           const SizedBox(width: 10),
      //           IconButton.filledTonal(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: null,
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //           IconButton.outlined(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: () {
      //               setState(() {
      //                 isSelected = !isSelected;
      //               });
      //             },
      //           ),
      //           const SizedBox(width: 10),
      //           IconButton.outlined(
      //             isSelected: isSelected,
      //             icon: const Icon(Icons.tv),
      //             selectedIcon: const Icon(Icons.live_tv),
      //             onPressed: null,
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
