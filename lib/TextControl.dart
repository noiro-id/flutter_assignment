// ignore: file_names
import 'package:flutter/material.dart';
import './TextOutput.dart';

class TextControl extends StatefulWidget {
  const TextControl({super.key});

  @override
  State<StatefulWidget> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = "This is the first assignment";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _mainText = 'This Changed';
            });
          },
          child: const Text('Change Text'),
        ),
        TextOutput(_mainText),
      ],
    );
  }
}
