import 'package:dev_clone/models/Post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quickly/quickly.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: FxPadding.pt20,
      child: ListView.builder(
        itemCount: posts.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            shape: Border.all(
              width: 1,
              color: Colors.black12,
            ),
            child: Container(
              padding: FxPadding.pxy(h: 10, v: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.network(posts[index].userAvatar),
                  ).w(80),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(posts[index].userName).bold,
                        Text(posts[index].date).sm,
                        SizedBox(height: 8),
                        Text(posts[index].title).extraBold.h5,
                        Container(
                          height: 20,
                          margin: FxPadding.py12,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index1) {
                              return Text("#" + posts[index].tags[index1])
                                  .px4
                                  .onTap(() {});
                            },
                            itemCount: posts[index].tags.length,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                FlatButton.icon(
                                  icon: FaIcon(
                                    FontAwesomeIcons.heart,
                                    size: 15,
                                  ),
                                  label: Text(
                                    posts[index].reactions.toString() +
                                        " Reactions",
                                  ),
                                  onPressed: () {},
                                ),
                                FlatButton.icon(
                                  icon: FaIcon(
                                    FontAwesomeIcons.comment,
                                    size: 15,
                                  ),
                                  label: Text(
                                    posts[index].comments.toString() +
                                        " Comments",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("4 min read"),
                                SizedBox(width: 5),
                                FlatButton(
                                  hoverColor: Color(0xffA9A9A9),
                                  color: Color(0xffC0C0C0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: FxRadius.r5,
                                  ),
                                  padding: FxPadding.p12,
                                  child: Text("Save"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
