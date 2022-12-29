import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/controllers/search_controller.dart';
import 'edit_notes.dart';

class NotesForSearch extends StatelessWidget {
  NotesForSearch({Key? key}) : super(key: key);
  final controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.searchedNotes.length,
          itemBuilder: (context, index) {
            final data = controller.searchedNotes[index];

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
                                  content: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            //controller.searchedNotes.deleteAt(index);
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "YES",
                                            style: TextStyle(
                                              color: Colors.red,
                                            ),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("NO")),
                                    ],
                                  ),
                                );
                              });
                        },
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return EditNotes(data);
                              },
                            ),
                          );
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
        ),
      ),
    );
  }
}
