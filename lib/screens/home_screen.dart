import 'package:blog_club/models/post.dart';
import 'package:blog_club/models/story.dart';
import 'package:blog_club/widgets/category_slider.dart';
import 'package:blog_club/widgets/post_card.dart';
import 'package:blog_club/widgets/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi, Johnathan!",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/img/icons/notification.png",
                        width: 35,
                        height: 35,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Explore today's",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => StoryItem(
                      story: stories[index],
                    ),
                    itemCount: stories.length,
                  ),
                ),
                const SizedBox(height: 20),
                const CategorySlider(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest News",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("More"),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => PostCard(
                    post: posts[index],
                  ),
                  itemCount: posts.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
