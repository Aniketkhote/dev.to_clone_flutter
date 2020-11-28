import 'package:dev_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0Xd4d4d4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftSidebar(),
            Expanded(
              child: Posts(),
            ),
            RightSidebar(),
          ],
        ),
      ),
    );
  }
}
