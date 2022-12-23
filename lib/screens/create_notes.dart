import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/create_notes_controller.dart';
import 'package:notes_app/widgets/reuse_text_field.dart';

class CreateNotes extends StatelessWidget {
  CreateNotes({Key? key}) : super(key: key);
  final createnotescontroller = Get.find<CreateNotesController>();

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
                  createnotescontroller.create(context);
                  createnotescontroller.tittlecontroller.clear();
                  createnotescontroller.descriptioncontroller.clear();
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
