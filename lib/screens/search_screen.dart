import 'package:flutter/material.dart';
import 'package:notes_app/screens/notes_for_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
