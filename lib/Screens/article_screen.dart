import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/widgets/custom_tag.dart';
import 'package:news_app/widgets/image_container.dart';
import 'package:news_app/widgets/news_headline.dart';

///  Created by youssouphafaye on 10/13/22.
class ArticleScreen extends StatelessWidget {
  static String route = "/article";
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white70),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          children: [
            NewsHeadline(article: article),
            NewsBody(article: article)
          ],
        ),
      ),
    );
  }
}

