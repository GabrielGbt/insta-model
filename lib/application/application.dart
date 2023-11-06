import 'package:flutter/material.dart';
import 'package:instapage/ui/feed/feed_presenter.dart';
import 'package:instapage/ui/home/home.dart';
import 'package:instapage/ui/post_page/post_page.dart';
import 'package:instapage/ui/search_page/search_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/feed': (context) => const FeedPagePresenter(),
        'search': (context) => const SearchPagePresenter(),
        'post': (context) => const PostPagePresenter(),
      },
    );
  }
}
