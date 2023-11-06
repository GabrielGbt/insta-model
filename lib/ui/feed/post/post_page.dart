import 'package:flutter/material.dart';
import 'package:instapage/ui/feed/post/post_card.dart';
import 'package:instapage/ui/feed/post/post_controller.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PostController controller = PostController();
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: controller.imagesAsset.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(
            image: controller.imagesAsset[index],
          );
        },
      ),
    );
  }
}
