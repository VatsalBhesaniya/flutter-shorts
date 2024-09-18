import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Widget'),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        backgroundColor: Colors.lime,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50),
      ),
      endDrawer: Drawer(
        child: _buildDrawerListView(),
      ),
      drawerScrimColor: Colors.red,
      bottomSheet: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height / 5,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 32,
        ),
        child: _buildBottomSheetListView(),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            _count.toString(),
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  ListView _buildBottomSheetListView() {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Bottom Sheet Item $index',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }

  ListView _buildDrawerListView() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Drawer Item $index',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
