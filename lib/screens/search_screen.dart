import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/search_controller.dart';
import 'package:notes_app/screens/notes_for_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = Get.find<SearchController>();
  @override
  void initState() {
    controller.getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 1),
          child: Container(
            child: Center(
              child: Text(
                "Search Notes Here",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            controller: controller.searchController,
            onChanged: (value) {
              controller.searchNotes(value);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              border: InputBorder.none,
              labelText: "Search Notes",
              suffixIcon: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        NotesForSearch(),
      ],
    );
  }
}
/*class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = Get.find<SearchController>();
  @override
  void initState() {
    controller.getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        controller.searchController.text = '';
        pop(context, true);
        return Future.value(false);
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                TextFormField(
                  controller: controller.searchController,
                  onChanged: (value) {
                    controller.searchNotes(value);
                  },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    border: InputBorder.none,
                    labelText: "Search Notes",
                    suffixIcon: Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: Obx(
                    () => ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.searchedNotes.length,
                      shrinkWrap: true,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (_, index) {
                        final data = controller.searchedNotes[index];
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              title: Text(
                                                  "Do you want to delete this?"),
                                              content: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void pop(BuildContext context, bool bool) {}*/
