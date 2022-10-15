import 'package:flutter/material.dart';

import '../models/article.dart';
import 'custom_tag.dart';

///  Created by youssouphafaye on 10/15/22.
class NewsBody extends StatelessWidget {
  const NewsBody({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomTag(
                    backgroundColor: Colors.black.withAlpha(150),
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(article.authorImageUrl),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        article.author,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white),
                      )
                    ]),
                const SizedBox(
                  width: 10,
                ),
                CustomTag(
                    backgroundColor: Colors.grey.withAlpha(150),
                    children: [
                      const Icon(Icons.timer, color: Colors.grey,),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        article.durationSince,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ]),
                const SizedBox(
                  width: 10,
                ),
                CustomTag(
                    backgroundColor: Colors.red.withAlpha(150),
                    children: [
                      const Icon(Icons.remove_red_eye, color: Colors.grey),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        article.views.toString(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ])
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            article.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            article.body,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
