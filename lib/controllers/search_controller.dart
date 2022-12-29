import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/notesmodel.dart';

class SearchController extends GetxController {
  final searchController = TextEditingController();
  final notes = <NotesModel>[].obs;
  final searchedNotes = <NotesModel>[].obs;
  void searchNotes(String value) {
    value = value.toLowerCase().trim();
    searchedNotes.value = [];
    searchedNotes.value = notes.where(
      (e) {
        return e.tittle.toLowerCase().contains(value);
      },
    ).toList();
  }

  void getNotes() {
    notes.value = [];
    final box = Hive.box<NotesModel>("boxname");
    for (var item in box.values) {
      notes.add(item);
    }
    searchedNotes.value = notes;
  }
}
