import 'package:flutter/material.dart';
import '../models/article.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/caroussel_widget.dart';
import '../widgets/last_news.dart';

///  Created by youssouphafaye on 10/13/22.
class HomeScreen extends StatelessWidget {
  static String route = "/";

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var articles = Article.articles;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.red,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          LastNews(article: articles[0]),
          CarousselWidget(articles: articles)
        ],
      ),
    );
  }
}

