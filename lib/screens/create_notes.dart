import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/notes_controller.dart';
import 'package:notes_app/widgets/reuse_text_field.dart';

class CreateNotes extends StatelessWidget {
  CreateNotes({Key? key}) : super(key: key);
  final notescontroller = Get.find<NotesController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          ReUseTextFields(notescontroller.tittlecontroller, "Tittle", 1),
          SizedBox(
            height: 10,
          ),
          ReUseTextFields(
              notescontroller.descriptioncontroller, "Description", 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  notescontroller.create();
                  notescontroller.tittlecontroller.clear();
                  notescontroller.descriptioncontroller.clear();
                },
                color: Colors.red,
                child: const Text("Create Notes"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
