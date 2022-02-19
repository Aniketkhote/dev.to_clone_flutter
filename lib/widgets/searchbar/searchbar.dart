import 'package:flutter/material.dart';
import 'package:quickly/quickly.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: FxPadding.pxy(v: 3, h: 15),
      width: MediaQuery.of(context).size.width * .3,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: FxRadius.r5,
          ),
          hintText: 'Search...',
          contentPadding: FxPadding.pxy(h: 20, v: 2),
        ),
      ),
    );
  }
}
