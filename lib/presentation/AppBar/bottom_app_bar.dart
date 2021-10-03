import 'package:flutter/material.dart';
import 'package:suka_nonton/presentation/search/search_sreen.dart';
import 'package:suka_nonton/value/colors.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> buildBottomNavBarItems() {
      return [
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
            title: new Text('Red')),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {},
          ),
          title: new Text('Blue'),
        ),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
            title: Text('Yellow')),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
            title: Text('Yellow'))
      ];
    }

    return BottomNavigationBar(
      items: buildBottomNavBarItems(),
      backgroundColor: color1,
      currentIndex: 0,
    );
  }
}
