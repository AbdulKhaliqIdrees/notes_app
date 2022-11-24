import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/master_controller.dart';

class IconsForSideBar extends StatelessWidget {
  IconsForSideBar(this.icon, this.iconname, this.index, {Key? key})
      : super(key: key);
  final controller = Get.find<MasterController>();
  final IconData icon;
  final String iconname;
  final int index;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        controller.index.value = index;
      },
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            iconname,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
