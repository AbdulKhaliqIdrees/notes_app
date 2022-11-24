import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/master_controller.dart';

class IconsForBottomNavigationBar extends StatelessWidget {
  IconsForBottomNavigationBar(this.icon, this.iconname, this.index, {Key? key})
      : super(key: key);
  final controller = Get.find<MasterController>();
  final IconData icon;
  final String iconname;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: TextButton(
        onPressed: () {
          controller.index.value = index;
        },
        child: Column(
          children: [
            Icon(
              icon,
              size: 25,
              color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              iconname,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
