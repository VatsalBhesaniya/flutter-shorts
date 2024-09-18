// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  String? imageFile;
  Uint8List? imageBytes;
  @override
  void initState() {
    super.initState();
    // getFilePath();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
        backgroundColor: Colors.amberAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () async {
                    // await writeFile();
                    // await writeFileBytes();
                  },
                  child: Text('Pick Image'),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 2),
                  ),
                  constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
                  child: Image.asset(
                    width: 450,
                    height: 300,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                    color: Colors.red,
                    colorBlendMode: BlendMode.colorDodge,
                    'assets/images/flutter_logo.jpg',
                  ),
                ),
                SizedBox(height: 50),
                Image.network(
                  height: 100,
                  'https://images.unsplash.com/photo-1540573133985-87b6da6d54a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1752&q=80',
                  loadingBuilder: (context, child, loadingProgress) {
                    return loadingProgress == null
                        ? child
                        : LinearProgressIndicator();
                  },
                ),
                SizedBox(height: 30),
                FutureBuilder(
                  future: getImageFilePath(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Image.file(
                        File(snapshot.data!),
                      );
                    }
                    return SizedBox();
                  },
                ),
                SizedBox(height: 30),
                FutureBuilder(
                  future: getImageBytes(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Image.memory(snapshot.data!);
                    }
                    return SizedBox();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> getImageFilePath() async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    return '${appDocumentsDir.path}/dog.jpg';
  }

  Future<Uint8List> getImageBytes() async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    final file = File('${appDocumentsDir.path}/avocado');
    return base64Decode(file.readAsStringSync());
  }

  Future<void> getFilePath() async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    setState(() {
      imageFile = '${appDocumentsDir.path}/dog.jpg';
      final file = File('${appDocumentsDir.path}/avocado');
      imageBytes = base64Decode(file.readAsStringSync());
    });
  }

  Future<void> writeFile() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    final gallaryImage = File(image!.path);
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/dog.jpg');
    gallaryImage.copy(file.path);
  }

  Future<void> writeFileBytes() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    final gallaryImage = File(image!.path);
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/avocado');
    file.writeAsString(base64Encode(gallaryImage.readAsBytesSync()));
  }
}
