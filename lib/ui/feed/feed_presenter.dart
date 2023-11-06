import 'package:flutter/material.dart';
import 'package:instapage/ui/feed/feed_controller.dart';
import 'package:instapage/ui/feed/feed_page.dart';

class FeedPagePresenter extends StatefulWidget {
  const FeedPagePresenter({super.key});

  @override
  State<FeedPagePresenter> createState() => _FeedPagePresenterState();
}

class _FeedPagePresenterState extends State<FeedPagePresenter> {
  final FeedController controller = FeedController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return const FeedPage();
          },
        ),
      ),
    );
  }
}
