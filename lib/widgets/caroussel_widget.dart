import 'package:flutter/material.dart';
import '../models/article.dart';
import 'caroussel_item.dart';

///  Created by youssouphafaye on 10/14/22.
class CarousselWidget extends StatelessWidget {
  const CarousselWidget({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Articles",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CarousselItem(article: articles[index]);
              },
              itemCount: articles.length,
            ),
          )
        ],
      ),
    );
  }
}

