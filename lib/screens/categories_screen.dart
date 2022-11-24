import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Flexible(
          child: MaterialButton(
            onPressed: () {},
            color: Colors.grey,
            child: Text("CategoriesScreen"),
          ),
        ),
      ),
    );
  }
}
