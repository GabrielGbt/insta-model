import 'package:flutter/material.dart';

class ProfilePagePresenter extends StatefulWidget {
  const ProfilePagePresenter({super.key});

  @override
  State<ProfilePagePresenter> createState() => _ProfilePagePresenterState();
}

class _ProfilePagePresenterState extends State<ProfilePagePresenter> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile'),
    );
  }
}
