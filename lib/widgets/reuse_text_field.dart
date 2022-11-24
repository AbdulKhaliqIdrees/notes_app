import 'package:flutter/material.dart';

class ReUseTextFields extends StatelessWidget {
  const ReUseTextFields(this.controller, this.label, this.linesnumber,
      {Key? key})
      : super(key: key);
  final TextEditingController controller;
  final String label;
  final int linesnumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        maxLines: linesnumber,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
