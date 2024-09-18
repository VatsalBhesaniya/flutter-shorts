import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderPrimaryValue = 4;
  double _currentSliderSecondaryValue = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Slider(
            activeColor: Colors.redAccent,
            secondaryActiveColor: Colors.deepOrangeAccent,
            inactiveColor: Colors.grey,
            divisions: 10,
            label: _currentSliderPrimaryValue.round().toString(),
            secondaryTrackValue: _currentSliderSecondaryValue,
            value: _currentSliderPrimaryValue,
            min: 0,
            max: 10,
            onChanged: (double value) {
              setState(() {
                _currentSliderPrimaryValue = value;
              });
            },
          ),
          const SizedBox(height: 20),
          Slider(
            label: _currentSliderSecondaryValue.round().toString(),
            value: _currentSliderSecondaryValue,
            min: 0,
            max: 10,
            onChanged: (double value) {
              setState(() {
                _currentSliderSecondaryValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
