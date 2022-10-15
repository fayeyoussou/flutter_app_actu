import 'package:flutter/material.dart';

import '../models/article.dart';
import 'custom_tag.dart';
import 'image_container.dart';

///  Created by youssouphafaye on 10/14/22.
class LastNews extends StatelessWidget {
  const LastNews({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          CustomTag(

              backgroundColor: Colors.red.withAlpha(150),
              children: [
                Text(
                  'Alerte du jour',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
              ]),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 1.25),
          ),
          TextButton(
            onPressed: () {},
            child: Row(children: [
              Text(
                "Learn more",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(width: 10,),
              const Icon(
                Icons.arrow_right_alt,
                color: Colors.red,
              )
            ]),
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
          )
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      imageUrl: article.imageUrl,
      borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20)),
    );
  }
}
