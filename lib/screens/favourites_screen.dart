import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Flexible(
          child: MaterialButton(
            onPressed: () {},
            color: Colors.green,
            child: Text("FavouriteScreen"),
          ),
        ),
      ),
    );
  }
}
