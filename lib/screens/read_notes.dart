import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/notesmodel.dart';

class ReadNotes extends StatelessWidget {
  const ReadNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WatchBoxBuilder(
        box: Hive.box<NotesModel>("boxname"),
        builder: (context, contactsBox) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: contactsBox.length,
            itemBuilder: (context, index) {
              final contact = contactsBox.getAt(index) as NotesModel;

              return Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          contact.tittle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          DateFormat('(dd-MM-yyyy)E::KK:mm:ss a')
                              .format(contact.datetime),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      contact.description,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 35,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (Builder) {
                                return AlertDialog(
                                  title: Text("Do you want to delete this?"),
                                  content: TextButton(
                                      onPressed: () {
                                        contactsBox.deleteAt(index);
                                      },
                                      child: Text("YES")),
                                );
                              });
                        },
                      ),
                    ),
                    Divider(
                      thickness: 5,
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
