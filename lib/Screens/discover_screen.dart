import 'package:flutter/material.dart';


import '../widgets/bottom_nav.dart';
import '../widgets/category_news_widget.dart';
import '../widgets/discover_news_widget.dart';

///  Created by youssouphafaye on 10/13/22.
class DiscoverScreen extends StatelessWidget {
  static String route = "/discover";

  const DiscoverScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> tabs = ["Alerte", "Annonce", "Sensibilisation"];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
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
        bottomNavigationBar: const BottomNav(index: 1),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            const DiscoverNewsWidget(),
            CategoryNewsWidget(
              tabs: tabs,
            )
          ],
        ),
      ),
    );
  }
}

