import 'package:dev_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftSidebar extends StatelessWidget {
  final List categories = [
    {
      'name': 'Listings',
      'icon': FontAwesomeIcons.video,
      'color': Colors.amber,
    },
    {
      'name': 'Prodcasts',
      'icon': FontAwesomeIcons.clipboard,
      'color': Colors.blueGrey[600],
    },
    {
      'name': 'Videos',
      'icon': FontAwesomeIcons.podcast,
      'color': Colors.blueGrey[600],
    },
    {
      'name': 'Tags',
      'icon': FontAwesomeIcons.tag,
      'color': Colors.amber,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Categories
          Container(
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return (index == 0)
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.handshake,
                              size: 18,
                              color: Colors.amber,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Sign In/Up',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Category(
                        name: categories[index - 1]['name'],
                        color: categories[index - 1]['color'],
                        icon: categories[index - 1]['icon'],
                      );
              },
            ),
          ),
          //More Categories Text
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 8),
            child: Text(
              'More...',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          //Tags
          Container(
            height: 350,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Tag(),
          ),
          // Sticker
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'dev_sticker.png',
                ),
              ),
              Center(
                child: Text(
                  'Do you have your sticker pack yet?',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String name;

  const Category({this.icon, this.color, this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
            color: color,
          ),
          SizedBox(width: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final List tags = [
    'flutter',
    'dart',
    'vue',
    'laravel',
    'php',
    'firabse',
    'angular',
    'node',
    'react',
    'javascript',
    'aws',
    'bootstrap',
    'tailwind'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Tags',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8),
        Expanded(
          child: Scrollbar(
            child: ListView.builder(
              itemCount: tags.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Text(
                        "#",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        tags[index],
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
