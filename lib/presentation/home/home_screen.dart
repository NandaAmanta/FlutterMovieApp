import 'package:flutter/material.dart';

import 'package:suka_nonton/presentation/AppBar/bottom_app_bar.dart';
import 'package:suka_nonton/presentation/home/recent.dart';
import 'package:suka_nonton/presentation/home/recomendation.dart';
import 'package:suka_nonton/value/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color3,
        appBar: AppBar(
          backgroundColor: color1,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: Colors.amber,
                ))
          ],
          title: Text("Suka Nonton"),
        ),
        body: ListView(
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
                )
              ),
            
            SizedBox(height: 10,),
            RecomendationWidget(),
            Recent()
          ],
        ),
        bottomNavigationBar: BottomAppBarWidget());
  }
}
