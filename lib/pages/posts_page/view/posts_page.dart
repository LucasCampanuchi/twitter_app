import 'package:flutter/material.dart';

import '../components/post.dart';
import '../components/post_with_threads.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PostWithThreads(),
          for (int i = 0; i < 5; i++) const Post(),
        ],
      ),
    );
  }
}
