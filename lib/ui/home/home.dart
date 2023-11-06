import 'package:flutter/material.dart';

import 'package:instapage/ui/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: controller.selectIndex,
        onTap: (index) {
          setState(() {
            controller.selectIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 20,
              child: Image.asset('assets/icons/home.png', fit: BoxFit.cover),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 20,
              child: Image.asset('assets/icons/search.png', fit: BoxFit.cover),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 20,
              child: Image.asset('assets/icons/post.png', fit: BoxFit.cover),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 20,
              child: Image.asset('assets/icons/reels.png', fit: BoxFit.cover),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 20,
              child: Image.asset('assets/icons/user.png', fit: BoxFit.cover),
            ),
            label: '',
          ),
        ],
      ),
      body: controller.body[controller.selectIndex],
    );
  }
}
