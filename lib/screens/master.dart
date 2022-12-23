import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/create_notes_controller.dart';
import 'package:notes_app/controllers/master_controller.dart';
import 'package:notes_app/globals/global.dart';
import 'package:notes_app/screens/chrome_body.dart';
import 'package:notes_app/screens/mobile_body.dart';

class Master extends StatelessWidget {
  Master({Key? key}) : super(key: key);
  final mastercontroller = Get.put(MasterController());
  final createnotescontroller = Get.put(CreateNotesController());

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
