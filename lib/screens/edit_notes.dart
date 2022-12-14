import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/create_notes_controller.dart';
import 'package:notes_app/controllers/update_notes%20controller.dart';
import 'package:notes_app/models/notesmodel.dart';
import 'package:notes_app/widgets/reuse_text_field.dart';

class EditNotes extends StatelessWidget {
  EditNotes({
    Key? key,
  }) : super(key: key);
  final createnotescontroller = Get.find<CreateNotesController>();
  final updatenotescontroller = Get.find<UpdateNotesController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          ReUseTextFields(createnotescontroller.tittlecontroller, "Tittle", 1),
          SizedBox(
            height: 10,
          ),
          ReUseTextFields(
              createnotescontroller.descriptioncontroller, "Description", 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  updatenotescontroller.updatenotes();
                  createnotescontroller.tittlecontroller.clear();
                  createnotescontroller.descriptioncontroller.clear();
                },
                color: Colors.yellow,
                child: const Text("UpDate Notes"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
