import 'package:hive/hive.dart';

part 'notesmodel.g.dart';

@HiveType(typeId: 0) //This is Model Class Type ID

class NotesModel extends HiveObject {
  @HiveField(0) //This is Field index
  final String id;
  @HiveField(1) //This is Field index
  late final String tittle;
  @HiveField(2) //This is Field index
  late final String description;
  @HiveField(3) //This is Field index
  final DateTime datetime;

  NotesModel(this.id, this.tittle, this.description, this.datetime);
}
