import 'package:flutter/material.dart';

class ReelsPagePresenter extends StatefulWidget {
  const ReelsPagePresenter({super.key});

  @override
  State<ReelsPagePresenter> createState() => _ReelsPagePresenterState();
}

class _ReelsPagePresenterState extends State<ReelsPagePresenter> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('reels'),
    );
  }
}
