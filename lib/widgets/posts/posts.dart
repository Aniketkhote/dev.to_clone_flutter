import 'package:dev_clone/models/Post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    child: CircleAvatar(
                      child: Image.network(posts[index].userAvatar),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].userName,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          posts[index].date,
                          style: TextStyle(),
                        ),
                        Text(
                          posts[index].title,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          height: 20,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index1) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "#" + posts[index].tags[index1],
                                  ),
                                ),
                              );
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
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  padding: EdgeInsets.all(10),
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
