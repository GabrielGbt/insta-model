import 'package:flutter/material.dart';
import 'package:instapage/ui/feed/stories/stories_card.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Container(
                      //margin: const EdgeInsets.only(bottom: 15),
                      height: 58,
                      width: 58,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/profilepic.jpg')),
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 2,
                            right: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.lightBlueAccent,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.add, size: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    'you',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 5,
                  );
                },
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return const StoriesCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
