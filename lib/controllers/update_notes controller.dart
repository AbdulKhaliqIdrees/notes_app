import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/notesmodel.dart';

class UpdateNotesController extends GetxController {
  TextEditingController tittlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  String id = '';

  void getData(NotesModel note) async {
    id = note.id;
    tittlecontroller.text = note.tittle;
    descriptioncontroller.text = note.description;
  }

  void updatenotes(BuildContext context) async {
    final datetime = DateTime.now();
    bool favourite = false;
    final data = NotesModel(
      id,
      tittlecontroller.text,
      descriptioncontroller.text,
      datetime,
      favourite,
    );
    final _notes = Hive.box<NotesModel>('boxname');
    _notes.put(
      id,
      data,
    );
    Navigator.pop(context);
  }
}
