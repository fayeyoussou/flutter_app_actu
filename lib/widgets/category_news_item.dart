import 'package:flutter/material.dart';

import '../Screens/article_screen.dart';
import '../models/article.dart';
import 'image_container.dart';

///  Created by youssouphafaye on 10/14/22.
class CategoryNewsItem extends StatelessWidget {
  const CategoryNewsItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(ArticleScreen.route,arguments: article);
      },
      child: Row(
        children: [
          ImageContainer(
              width: 80,
              height: 80,
              margin: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              imageUrl: article.imageUrl),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  article.title,
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context)
                      .textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    const Icon(Icons.schedule,size: 18,),
                    const SizedBox(width: 5,),
                    Text(
                      article.durationSince,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(width: 20,),
                    const Icon(
                      Icons.visibility,
                      size: 18,
                    ),
                    Text(
                      '${article.views} vues ',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
