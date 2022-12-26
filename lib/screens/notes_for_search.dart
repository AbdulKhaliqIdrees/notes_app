import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/notesmodel.dart';

class NotesForSearch extends StatelessWidget {
  const NotesForSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WatchBoxBuilder(
        box: Hive.box<NotesModel>("boxname"),
        builder: (context, contactsBox) {
          contactsBox.values.where(
            (e) {
              return e.tittle.toLowerCase().contains();
            },
          ).toList();

          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: contactsBox.length,
            itemBuilder: (context, index) {
              final data = contactsBox.getAt(index) as NotesModel;

              return Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data.tittle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          DateFormat('(dd-MM-yyyy)E::KK:mm:ss a')
                              .format(data.datetime),
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
                      data.description,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
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
                        IconButton(
                          onPressed: () {
                            // updatenotescontroller.edit(data);
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) {
                            //       return EditNotes();
                            //     },
                            //   ),
                            // );
                          },
                          icon: Icon(Icons.edit),
                          iconSize: 35,
                        ),
                      ],
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
