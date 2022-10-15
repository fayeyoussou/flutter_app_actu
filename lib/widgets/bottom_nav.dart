import 'package:flutter/material.dart';
import 'package:news_app/Screens/discover_screen.dart';
import 'package:news_app/Screens/home_screen.dart';

///  Created by youssouphafaye on 10/13/22.
class BottomNav extends StatefulWidget {
  const BottomNav({
    Key? key,
    required this.index
  }) : super(key: key);
  final int index;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black12,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(left: 50),
              child: IconButton(
                onPressed: widget.index == 0 ? null :(){
                  Navigator.of(context).pushReplacementNamed(HomeScreen.route);
                },
                icon: Icon(Icons.home),
                disabledColor: Colors.black,
              ),

            ),
            label: "home"
        ),
        BottomNavigationBarItem(
            icon: IconButton(

              onPressed: widget.index == 1 ? null :(){
                 Navigator.of(context).pushReplacementNamed(DiscoverScreen.route);
              },
              icon: const Icon(Icons.search),
              disabledColor: Colors.black,
            ),
            label: "home"
        ),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.person),
                disabledColor: Colors.black,

              ),
            ),
            label: "home"
        ),
      ],
    );
  }
}
