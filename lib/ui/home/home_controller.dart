import 'package:flutter/material.dart';
import 'package:instapage/ui/feed/feed_presenter.dart';
import 'package:instapage/ui/news_page/news_page.dart';
import 'package:instapage/ui/post_page/post_page.dart';
import 'package:instapage/ui/profile_page/profile_page.dart';
import 'package:instapage/ui/search_page/search_page.dart';

class HomeController extends ChangeNotifier {
  var selectIndex = 0;

  List<Widget> body = [
    const FeedPagePresenter(),
    const SearchPagePresenter(),
    const PostPagePresenter(),
    const ReelsPagePresenter(),
    const ProfilePagePresenter(),
  ];
}
