import 'package:blog_club/constants.dart';
import 'package:blog_club/models/story.dart';
import 'package:blog_club/screens/profile_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final Story story;
  const StoryItem({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 2,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                story.isViewed
                    ? SizedBox(
                        height: 70,
                        width: 70,
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          color: kgreyColor,
                          padding: const EdgeInsets.all(7),
                          dashPattern: const [5, 3],
                          strokeWidth: 2,
                          radius: const Radius.circular(25),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(story.imageFileName),
                          ),
                        ),
                      )
                    : Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff376AED),
                              Color(0xff49B0E2),
                              Color(0xff9CECFB),
                            ],
                            begin: Alignment.topCenter,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              story.imageFileName,
                            ),
                          ),
                        ),
                      ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    story.iconFileName,
                    height: 20,
                    width: 20,
                  ),
                )
              ],
            ),
            Expanded(
              child: Text(
                story.name,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
