class Post {
  final String userName;
  final String userAvatar;
  final String title;
  final String date;
  final List tags;
  final int reactions;
  final int comments;

  Post({
    required this.userName,
    required this.userAvatar,
    required this.title,
    required this.date,
    required this.tags,
    required this.reactions,
    required this.comments,
  });
}

List posts = [
  Post(
    userName: 'Tony Stark',
    userAvatar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRM85ZRhd9NBmsbIdtjNKu1F98LoGgrLmPvqA&usqp=CAU',
    date: "17 Nov",
    title: "10 Awesome Github Repos Every Web Developer Should Know",
    reactions: 17,
    comments: 12,
    tags: ['javascript', 'webdev', 'productivity', 'beginners'],
  ),
  Post(
    userName: 'Thor',
    userAvatar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS_7NLIRf6MkGBPf2gjK8MzRUxyF9BlfPkX7A&usqp=CAU',
    date: "16 Nov",
    title: "Should You Start A Blog As A Developer?",
    reactions: 7,
    comments: 2,
    tags: ['webdev', 'beginners', 'career', 'programming'],
  ),
  Post(
    userName: 'Spider Man',
    userAvatar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQvfgINKh0wd4ANbVyDZC3r7iXxrhRCwjMCYg&usqp=CAU',
    date: "14 Nov",
    title: "Important points for CS newbies !",
    reactions: 12,
    comments: 0,
    tags: ['productivity', 'javascript', '100daysofcode', 'beginners'],
  ),
];
