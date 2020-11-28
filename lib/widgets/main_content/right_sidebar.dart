import 'package:dev_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FaIcon(
                  FontAwesomeIcons.dev,
                  size: 50,
                ),
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
                      padding: EdgeInsets.only(bottom: 5),
                      width: double.infinity,
                      child: RaisedButton(
                        textColor: Colors.white,
                        onPressed: () {},
                        color: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        child: Text('Create New Account'),
                      ),
                    ),
                    Text(
                      'Log In',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final Widget child;
  CustomBox({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}
