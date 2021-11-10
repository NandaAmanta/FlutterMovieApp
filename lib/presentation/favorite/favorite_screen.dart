import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:suka_nonton/data/local/hive_db.dart';
import 'package:suka_nonton/data/model/movie_item_adapter.dart';
import 'package:suka_nonton/data/movie/movie_client_api.dart';
import 'package:suka_nonton/value/colors.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late Box<MovieItemAdapter> favoriteFilmBox;

  @override
  void initState() {
    super.initState();
    favoriteFilmBox = HiveDb().openMovieItemBox();
  }

  @override
  Widget build(BuildContext context) {
    if (favoriteFilmBox.length == 0) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image(
            image: AssetImage("images/emptyfav.png"), width: 200, height: 200),
        Text(
          "Boo.... Empty data",
          style: TextStyle(color: Colors.white70, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Let's find your favorite movie",
          style: TextStyle(color: Colors.white30, fontSize: 20),
        )
      ]);
    }
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: GridView.count(
        childAspectRatio: (110/200),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(favoriteFilmBox.length, (index) {
            return Container(
              width: 110,
              height: 220,
              margin: EdgeInsets.only(left: 10, right: 10,bottom: 10),
              child: InkWell(
                  child: Card( 
                color: color1,
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      '$IMAGE_BASE_URL${favoriteFilmBox.get(index)!.image}',
                      width: 100,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          favoriteFilmBox.get(index)!.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: color2,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: color2,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: color2,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: color2,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: color2,
                              size: 15,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
            );
          })),
    );
  }
}
