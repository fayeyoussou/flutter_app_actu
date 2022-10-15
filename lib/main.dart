import 'package:flutter/material.dart';
import 'package:news_app/Screens/article_screen.dart';
import 'package:news_app/Screens/discover_screen.dart';
import 'package:news_app/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
          HomeScreen.route : (context)=>HomeScreen(),
          DiscoverScreen.route : (ctx)=>DiscoverScreen(),
        ArticleScreen.route: (ctx)=>ArticleScreen(),
      },
    );
  }
}

