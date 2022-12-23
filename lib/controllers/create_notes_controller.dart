import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/notesmodel.dart';
import 'package:uuid/uuid.dart';

class CreateNotesController extends GetxController {
  TextEditingController tittlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  void create(BuildContext context) async {
    var id = Uuid().v1();
    final datetime = DateTime.now();
    final data = NotesModel(
        id, tittlecontroller.text, descriptioncontroller.text, datetime);
    final _notes = Hive.box<NotesModel>('boxname');
    _notes.put(
      id,
      data,
    );
    Navigator.pop(context);
  }

  /*void edit(NotesModel notesmodel) async {
    tittlecontroller.text = notesmodel.tittle;
    descriptioncontroller.text = notesmodel.description;
  }*/

  /*void updatenotes() async {
   var id = Uuid().v1();
    final datetime = DateTime.now();
    final data = NotesModel(
        id, tittlecontroller.text, descriptioncontroller.text, datetime);
    final _notes = Hive.box<NotesModel>('boxname');
    _notes.put(
      id,
      data,
    );
  }*/
}
