import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      mouseCursor: MaterialStateMouseCursor.textable,
      customBorder: const CircleBorder(side: BorderSide.none),
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 62,
                width: 62,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.pink,
                      Colors.red,
                      Colors.orange,
                    ],
                  ),
                ),
              ),
              Container(
                height: 58,
                width: 58,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 3),
            child: Text('Name'),
          ),
        ],
      ),
    );
  }
}
