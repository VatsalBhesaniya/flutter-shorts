import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidget();
}

class _WrapWidget extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        color: Colors.lightBlue,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 32,
        ),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.start,
          runAlignment: WrapAlignment.end,
          verticalDirection: VerticalDirection.down,
          direction: Axis.vertical,
          children: const <Widget>[
            Chip(
              avatar: Icon(
                Icons.one_k_rounded,
                size: 36,
              ),
              label: Text(
                'One K',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Chip(
              avatar: Icon(
                Icons.two_k_rounded,
                size: 36,
              ),
              label: Text(
                '2 K',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Chip(
              avatar: Icon(
                Icons.three_k_rounded,
                size: 36,
              ),
              label: Text(
                'Three K',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Chip(
              avatar: Icon(
                Icons.four_k_rounded,
                size: 36,
              ),
              label: Text(
                '4 K',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Chip(
              avatar: Icon(
                Icons.five_k_rounded,
                size: 36,
              ),
              label: Text(
                'Five K',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Chip(
              avatar: Icon(
                Icons.six_k_rounded,
                size: 36,
              ),
              label: Text(
                'Six K',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Chip(
              avatar: Icon(
                Icons.seven_k_rounded,
                size: 36,
              ),
              label: Text(
                'Seven K',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Chip(
              avatar: Icon(
                Icons.eight_k_rounded,
                size: 36,
              ),
              label: Text(
                '8 K',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
