import 'package:flutter/material.dart';
import 'package:instapage/ui/search_page/pictures_random_card.dart';

class SearchPagePresenter extends StatefulWidget {
  const SearchPagePresenter({super.key});

  @override
  State<SearchPagePresenter> createState() => _SearchPagePresenterState();
}

class _SearchPagePresenterState extends State<SearchPagePresenter> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, 80),
          child: Container(
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  SizedBox(
                    height: 80,
                    width: width - 60,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const PicturesRandomCard();
          },
        ),
      ),
    );
  }
}
