import 'package:flutter/material.dart';
import 'package:instapage/ui/feed/post/post_page.dart';
import 'package:instapage/ui/feed/stories/stories.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: Material(
          elevation: 5,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 40,
                    child: Image.asset(
                      'assets/icons/logo.png',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 40,
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/like.png')),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/direct.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            StoriesWidget(),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}
