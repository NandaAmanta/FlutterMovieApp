import 'package:flutter/material.dart';
import 'package:suka_nonton/value/colors.dart';

class BottomAppBarWidget extends StatefulWidget {
  int selectedIndex = 0;
  BottomAppBarWidget({Key? key, required int selectedIndex}) : super(key: key);

  @override
  _BottomAppBarWidgetState createState() =>
      _BottomAppBarWidgetState(selectedIndex);
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  int selectedIndex;

  _BottomAppBarWidgetState(this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        unselectedIconTheme: IconThemeData(color: Colors.blueGrey),
        selectedIconTheme: IconThemeData(color: Colors.white),
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(
              Icons.favorite_border,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person_pin,
              size: 25,
            ),
          ),
        ],
        backgroundColor: color1,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            print(index);
            selectedIndex = index;
          });
        });
  }
}
