import 'package:dev_clone/constant.dart';
import 'package:dev_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:quickly/quickly.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: FxPadding.pxy(v: 5, h: 20),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Logo(),
              SearchBar(),
            ],
          ),
          Row(
            children: [
              Text('Log In').medium.body1.color(kPrimaryColor),
              SizedBox(width: 20),
              Container(
                padding: FxPadding.pxy(v: 10, h: 20),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: FxRadius.r5,
                ),
                child: Text('Create Account').medium.body1.color(Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
