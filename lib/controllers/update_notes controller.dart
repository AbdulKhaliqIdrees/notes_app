import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/notesmodel.dart';
import 'package:uuid/uuid.dart';
import 'create_notes_controller.dart';

class UpdateNotesController extends GetxController {
  final createnotescontroller = Get.find<CreateNotesController>();
  void edit(NotesModel notesmodel) async {
    createnotescontroller.tittlecontroller.text = notesmodel.tittle;
    createnotescontroller.descriptioncontroller.text = notesmodel.description;
  }

  void updatenotes() async {
    var id = Uuid().v1();
    final datetime = DateTime.now();
    final data = NotesModel(id, createnotescontroller.tittlecontroller.text,
        createnotescontroller.descriptioncontroller.text, datetime);
    final _notes = Hive.box<NotesModel>('boxname');
    _notes.put(
      id,
      data,
    );
  }
}
