import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:suka_nonton/data/local/hive_db.dart';
import 'package:suka_nonton/data/model/movie_item_adapter.dart';
import 'package:suka_nonton/presentation/favorite/favorite_screen.dart';

import 'package:suka_nonton/presentation/home/components/recent.dart';
import 'package:suka_nonton/presentation/home/components/recomendation.dart';
import 'package:suka_nonton/presentation/profile/profile_screen.dart';
import 'package:suka_nonton/presentation/search/search_sreen.dart';
import 'package:suka_nonton/value/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  late Box<MovieItemAdapter> favoriteFilmBox;

  @override
  void initState() {
    super.initState();
    favoriteFilmBox = HiveDb().openMovieItemBox();
    
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    HiveDb().close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color3,
        appBar: AppBar(
          backgroundColor: color1,
          actions: [
            IconButton(
                onPressed: () {
                  favoriteFilmBox.clear();
                },
                icon: Icon(
                  Icons.star,
                  color: Colors.amber,
                ))
          ],
          title: Text("Suka Nonton"),
        ),
        body: PageView(
          onPageChanged: (inx) {
            print(inx);
            setState(() {
              selectedIndex = inx;
            });
          },
          children: [
            ListView(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'Recommendation',
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 20,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Colors.black,
                          ),
                        ),
                        // Solid text as fill.
                        Text(
                          'Recommendation',
                          style: TextStyle(
                            letterSpacing: 3,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                RecomendationWidget(),
                Recent()
              ],
            ),
            SearchScreen(),
            FavoriteScreen(),
            ProfileScreen()
          ],
          controller: pageController,
        ),
        bottomNavigationBar: BottomNavigationBar(
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
                pageController.jumpToPage(index);
              });
            }));
  }
}
