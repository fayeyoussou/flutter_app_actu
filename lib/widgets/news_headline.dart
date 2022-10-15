import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';

import 'custom_tag.dart';

///  Created by youssouphafaye on 10/14/22.
class NewsHeadline extends StatelessWidget {
  const NewsHeadline({
    Key? key, required this.article,
  }) : super(key: key);
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          CustomTag(
              backgroundColor: Colors.red.withAlpha(150),
              children: [
                Text(
                  article.category,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),

              ]),
          const SizedBox(height: 10,),
          Text(
            article.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(
                color: Colors.white,
                height: 1.25
            ),
          ),
          Text(
            article.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
