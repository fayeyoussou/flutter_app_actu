import 'package:flutter/material.dart';

import '../models/article.dart';
import 'category_news_item.dart';

///  Created by youssouphafaye on 10/14/22.
class CategoryNewsWidget extends StatelessWidget {
  final List<String> tabs;
  const CategoryNewsWidget({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var articles = Article.articles;
    return Column(
      children: [
        TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            tabs: tabs
                .map((e) => Tab(
              icon: Text(
                e,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ))
                .toList()),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs
                .map((e) => ListView.builder(
              itemBuilder: (context, index) {
                return CategoryNewsItem(article: articles[index]);
              },
              itemCount: articles.length,
              shrinkWrap: true,
            ))
                .toList(),
          ),
        )
      ],
    );
  }
}

