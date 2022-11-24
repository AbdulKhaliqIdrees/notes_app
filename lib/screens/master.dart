import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/master_controller.dart';
import 'package:notes_app/controllers/notes_controller.dart';
import 'package:notes_app/globals/global.dart';
import 'package:notes_app/screens/chrome_body.dart';
import 'package:notes_app/screens/mobile_body.dart';

class Master extends StatelessWidget {
  Master({Key? key}) : super(key: key);
  final mastercontroller = Get.put(MasterController());
  final notescontroller = Get.put(NotesController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFF0E9),
        body: isMobile(context) ? MobileBody() : ChromeBody(),
      ),
    );
  }
}
