import 'package:flutter/material.dart';

class PicturesRandomCard extends StatelessWidget {
  const PicturesRandomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 3 - 2;
    return SizedBox(
      height: width / 3 + 92,
      child: Row(
        children: [
          Container(
            width: width,
            height: width,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey,
            ),
            child: IconButton(
              icon: const Icon(Icons.image),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Container(
            width: width,
            height: width,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey,
            ),
            child: IconButton(
              icon: const Icon(Icons.image),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Container(
            width: width,
            height: width,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey,
            ),
            child: IconButton(
              icon: const Icon(Icons.image),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
