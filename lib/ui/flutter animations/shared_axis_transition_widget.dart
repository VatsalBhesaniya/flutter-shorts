import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SharedAxisTransitionWidget extends StatefulWidget {
  const SharedAxisTransitionWidget({super.key});

  @override
  State<SharedAxisTransitionWidget> createState() =>
      _SharedAxisTransitionWidgetState();
}

class _SharedAxisTransitionWidgetState extends State<SharedAxisTransitionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      value: 0.0,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 1),
      vsync: this,
    )..addStatusListener((AnimationStatus status) {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _isAnimationRunningForwardsOrComplete {
    switch (_controller.status) {
      case AnimationStatus.forward:
      case AnimationStatus.completed:
        return true;
      case AnimationStatus.reverse:
      case AnimationStatus.dismissed:
        return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fade')),
      // floatingActionButton: AnimatedBuilder(
      //   animation: _controller,
      //   builder: (BuildContext context, Widget? child) {
      //     return FadeScaleTransition(
      //       animation: _controller,
      //       child: child,
      //     );
      //   },
      //   child: Visibility(
      //     visible: _controller.status != AnimationStatus.dismissed,
      //     child: FloatingActionButton(
      //       child: const Icon(Icons.add),
      //       onPressed: () {},
      //     ),
      //   ),
      // ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Divider(height: 0.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    showModal<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AnimatedBuilder(
                          animation: _controller,
                          builder: (BuildContext context, Widget? child) {
                            return FadeScaleTransition(
                              animation: _controller,
                              child: child,
                            );
                          },
                          child: _ExampleAlertDialog(),
                        );
                      },
                    );
                  },
                  child: const Text('SHOW MODAL'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_isAnimationRunningForwardsOrComplete) {
                      _controller.reverse();
                    } else {
                      _controller.forward();
                    }
                  },
                  child: _isAnimationRunningForwardsOrComplete
                      ? const Text('HIDE FAB')
                      : const Text('SHOW FAB'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExampleAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text('Alert Dialog'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('CANCEL'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('DISCARD'),
        ),
      ],
    );
  }
}
