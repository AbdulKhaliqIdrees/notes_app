import 'package:flutter/material.dart';
import 'package:notes_app/screens/apbar.dart';
import 'package:notes_app/screens/read_notes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Apbar(),
        SizedBox(
          height: 10,
        ),
        ReadNotes(),
      ],
    );
  }
}
