import 'package:flutter/material.dart';

import '../Screens/article_screen.dart';
import '../models/article.dart';
import 'image_container.dart';

///  Created by youssouphafaye on 10/14/22.
class CarousselItem extends StatelessWidget {
  const CarousselItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final  Article article;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, ArticleScreen.route,arguments: article);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageContainer(
              width: MediaQuery.of(context).size.width * 0.5,
              imageUrl: article.imageUrl,
              borderRadius: BorderRadius.circular(20),
            ),
            const SizedBox(height: 10,),
            Text(
              article.title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.5
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 5,),
            Text(
                article.durationSince,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
            ),
            const SizedBox(height: 5,),
            Text(
                article.author,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
            ),
          ],
        ),
      ),
    );
  }
}
