import 'package:flutter/material.dart';

class SegmentedButtonWidget extends StatefulWidget {
  const SegmentedButtonWidget({super.key});

  @override
  State<SegmentedButtonWidget> createState() => _SegmentedButtonWidgetState();
}

class _SegmentedButtonWidgetState extends State<SegmentedButtonWidget> {
  Youtube youtube = Youtube.like;
  Weather weather = Weather.cloudy;
  Set<Recipes> recipe = <Recipes>{Recipes.pizza, Recipes.coke};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segmented Button Widget'),
        elevation: 16,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            // Spacer(),
            // SegmentedButton<Youtube>(
            //   selected: <Youtube>{youtube},
            //   segments: <ButtonSegment<Youtube>>[
            //     ButtonSegment<Youtube>(
            //       value: Youtube.like,
            //       label: Text(Youtube.like.name),
            //       icon: Icon(Icons.favorite),
            //     ),
            //     ButtonSegment<Youtube>(
            //       value: Youtube.share,
            //       label: Text(Youtube.share.name),
            //       icon: Icon(Icons.share),
            //     ),
            //   ],
            //   onSelectionChanged: (Set<Youtube> newSelection) {
            //     setState(() {
            //       youtube = newSelection.first;
            //     });
            //   },
            //   style: SegmentedButton.styleFrom(
            //     textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            //     backgroundColor: Colors.blueAccent[200],
            //     foregroundColor: Colors.white,
            //     selectedForegroundColor: Colors.blueGrey,
            //     selectedBackgroundColor: Colors.lime,
            //   ),
            // ),
            // SizedBox(height: 40),
            // SegmentedButton<Youtube>(
            //   selected: <Youtube>{youtube},
            //   segments: <ButtonSegment<Youtube>>[
            //     ButtonSegment<Youtube>(
            //       value: Youtube.comment,
            //       label: Text(Youtube.comment.name),
            //       icon: Icon(Icons.comment),
            //     ),
            //     ButtonSegment<Youtube>(
            //       value: Youtube.subscribe,
            //       label: Text(Youtube.subscribe.name),
            //       icon: Icon(Icons.subscriptions),
            //     ),
            //   ],
            //   onSelectionChanged: (Set<Youtube> newSelection) {
            //     setState(() {
            //       youtube = newSelection.first;
            //     });
            //   },
            //   style: SegmentedButton.styleFrom(
            //     textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            //     backgroundColor: Colors.blueAccent[200],
            //     foregroundColor: Colors.white,
            //     selectedForegroundColor: Colors.blueGrey,
            //     selectedBackgroundColor: Colors.lime,
            //   ),
            // ),
            // Spacer(),
            SizedBox(height: 40),
            // Text(
            //   'Single choice button',
            //   style: TextStyle(fontSize: 20),
            // ),
            SizedBox(height: 10),
            SegmentedButton<Weather>(
              selected: <Weather>{weather},
              segments: <ButtonSegment<Weather>>[
                ButtonSegment<Weather>(
                  value: Weather.cloudy,
                  label: Text(Weather.cloudy.name),
                  icon: Icon(Icons.cloud),
                ),
                ButtonSegment<Weather>(
                  value: Weather.sunny,
                  label: Text(Weather.sunny.name),
                  icon: Icon(Icons.sunny),
                ),
                ButtonSegment<Weather>(
                  value: Weather.windy,
                  label: Text(Weather.windy.name),
                  icon: Icon(Icons.air),
                ),
                ButtonSegment<Weather>(
                  value: Weather.snowy,
                  label: Text(Weather.snowy.name),
                  icon: Icon(Icons.cloudy_snowing),
                ),
              ],
              onSelectionChanged: (Set<Weather> newSelection) {
                setState(() {
                  weather = newSelection.first;
                });
              },
              style: SegmentedButton.styleFrom(
                backgroundColor: Colors.blueAccent[200],
                foregroundColor: Colors.white,
                selectedForegroundColor: Colors.blueGrey,
                selectedBackgroundColor: Colors.lime,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Multiple choice button',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            SegmentedButton<Recipes>(
              multiSelectionEnabled: true,
              selected: recipe,
              segments: <ButtonSegment<Recipes>>[
                ButtonSegment<Recipes>(
                  value: Recipes.pizza,
                  label: Text(Recipes.pizza.name),
                ),
                ButtonSegment<Recipes>(
                  value: Recipes.burger,
                  label: Text(Recipes.burger.name),
                ),
                ButtonSegment<Recipes>(
                  value: Recipes.coke,
                  label: Text(Recipes.coke.name),
                ),
                ButtonSegment<Recipes>(
                  value: Recipes.coffee,
                  label: Text(Recipes.coffee.name),
                ),
              ],
              onSelectionChanged: (Set<Recipes> newSelection) {
                setState(() {
                  recipe = newSelection;
                });
              },
              style: SegmentedButton.styleFrom(
                backgroundColor: Colors.blueAccent[200],
                foregroundColor: Colors.white,
                selectedForegroundColor: Colors.blueGrey,
                selectedBackgroundColor: Colors.lime,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Youtube { like, share, comment, subscribe }

enum Weather { cloudy, sunny, windy, snowy }

enum Recipes { pizza, burger, coke, coffee }
