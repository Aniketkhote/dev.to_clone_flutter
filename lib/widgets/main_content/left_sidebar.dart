import 'package:dev_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quickly/quickly.dart';

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
    return Column(
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
                  ? Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.handshake,
                          size: 18,
                          color: Colors.amber,
                        ),
                        SizedBox(width: 8),
                        Text('Sign In/Up').body1.extraBold,
                      ],
                    ).p8
                  : Category(
                      name: categories[index - 1]['name'],
                      color: categories[index - 1]['color'],
                      icon: categories[index - 1]['icon'],
                    );
            },
          ),
        ),
        //More Categories Text
        Text('More...').normal.body2.gray600.pOnly(left: 35, top: 8),
        //Tags
        Tag().py20.h(350),
        // Sticker
        Column(
          children: [
            ClipRRect(
              borderRadius: FxRadius.r10,
              child: Image.asset(
                'dev_sticker.png',
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text('Do you have your sticker pack yet?')
                  .h6
                  .extraBold
                  .color(kPrimaryColor)
                  .textCenter,
            ),
          ],
        ),
      ],
    ).w(270).pxy(h: 30, v: 20);
  }
}

class Category extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String name;

  const Category({required this.icon, required this.color, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon, size: 18, color: color),
          SizedBox(width: 8),
          Text(name).body1,
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
        Text('Popular Tags').bold.h6,
        SizedBox(height: 8),
        Expanded(
          child: Scrollbar(
            child: ListView.builder(
              itemCount: tags.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Text("# ${tags[index]}").h6.py8;
              },
            ),
          ),
        ),
      ],
    );
  }
}
