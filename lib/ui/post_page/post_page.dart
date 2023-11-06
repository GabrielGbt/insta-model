import 'package:flutter/material.dart';

class PostPagePresenter extends StatefulWidget {
  const PostPagePresenter({super.key});

  @override
  State<PostPagePresenter> createState() => _PostPagePresenterState();
}

class _PostPagePresenterState extends State<PostPagePresenter> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Faça um post'),
    );
  }
}
