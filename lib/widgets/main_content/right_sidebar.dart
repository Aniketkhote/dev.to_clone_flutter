import 'package:dev_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quickly/quickly.dart';

class RightSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaIcon(FontAwesomeIcons.dev, size: 50),
              RichText(
                text: TextSpan(
                  text: 'Dev ',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: "is a community of 501,844 amazing developers",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Text(
                  'We\'re a place where coders share, stay up-to-date and grow their careers'),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: FxPadding.pb4,
                    width: double.infinity,
                    child: RaisedButton(
                      textColor: Colors.white,
                      onPressed: () {},
                      color: kPrimaryColor,
                      shape: RoundedRectangleBorder(borderRadius: FxRadius.r5),
                      padding: FxPadding.pxy(v: 15, h: 30),
                      child: Text('Create New Account'),
                    ),
                  ),
                  Text('Log In').color(kPrimaryColor),
                ],
              ),
            ],
          ),
        )
      ],
    ).p32.w(370);
  }
}

class CustomBox extends StatelessWidget {
  final Widget child;
  CustomBox({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: FxPadding.p20,
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border.all(color: Colors.black12),
        borderRadius: FxRadius.r5,
      ),
      child: child,
    );
  }
}
