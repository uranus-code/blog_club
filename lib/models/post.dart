class Post {
  final int id;
  final String caption;
  final String title;
  final String likes;
  final String time;
  final bool isBookmarked;
  final String imageFileName;

  const Post({
    required this.id,
    required this.caption,
    required this.title,
    required this.likes,
    required this.time,
    required this.isBookmarked,
    required this.imageFileName,
  });
}

const List<Post> posts = [
  Post(
    id: 1,
    title: 'BMW M5 Competition Review 2021',
    caption: 'TOP GEAR',
    isBookmarked: false,
    likes: '3.1k',
    time: '1hr ago',
    imageFileName: 'assets/img/posts/small/small_post_1.jpg',
  ),
  Post(
    id: 0,
    title: 'MacBook Pro with M1 Pro and M1 Max review',
    caption: 'THE VERGE',
    isBookmarked: false,
    likes: '1.2k',
    time: '2hr ago',
    imageFileName: 'assets/img/posts/small/small_post_2.jpg',
  ),
  Post(
    id: 2,
    title: 'Step design sprint for UX beginner',
    caption: 'Ux Design',
    isBookmarked: true,
    likes: '2k',
    time: '41hr ago',
    imageFileName: 'assets/img/posts/small/small_post_3.jpg',
  ),
];
