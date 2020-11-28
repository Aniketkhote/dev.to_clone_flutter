import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      width: MediaQuery.of(context).size.width * .3,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: 'Search...',
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        ),
      ),
    );
  }
}
