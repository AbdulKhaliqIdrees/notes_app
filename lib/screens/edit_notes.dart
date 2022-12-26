import 'package:flutter/material.dart';
import 'package:notes_app/controllers/update_notes%20controller.dart';
import 'package:notes_app/models/notesmodel.dart';
import 'package:notes_app/widgets/reuse_text_field.dart';

class EditNotes extends StatefulWidget {
  const EditNotes(this.note, {Key? key}) : super(key: key);

  final NotesModel note;

  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
  final updatenotescontroller = UpdateNotesController();

  @override
  void initState() {
    updatenotescontroller.getData(widget.note);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          ReUseTextFields(updatenotescontroller.tittlecontroller, "Tittle", 1),
          SizedBox(
            height: 10,
          ),
          ReUseTextFields(
              updatenotescontroller.descriptioncontroller, "Description", 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  updatenotescontroller.updatenotes(context);
                },
                color: Colors.yellow,
                child: const Text("UpDate Notes"),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  size: 35,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
