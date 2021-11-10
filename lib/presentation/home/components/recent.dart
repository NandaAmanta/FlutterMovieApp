import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:suka_nonton/data/local/hive_db.dart';
import 'package:suka_nonton/data/model/movie_item_adapter.dart';
import 'package:suka_nonton/data/movie/model/movie_item_response.dart';
import 'package:suka_nonton/data/movie/movie_client_api.dart';
import 'package:suka_nonton/value/colors.dart';

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  MovieClientApi movieClientApi = new MovieClientApi();

  late Box<MovieItemAdapter> favoriteFilmBox;

  @override
  void initState() {
    super.initState();
    favoriteFilmBox = HiveDb().openMovieItemBox();;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: FutureBuilder(
          future: movieClientApi.getPopularMovies(),
          builder: (context, AsyncSnapshot<List<MovieItemResponse>?> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                List<MovieItemResponse> movies = snapshot.data!;

                return ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Card(
                                  elevation: 5,
                                  child: Image.network(
                                    '$IMAGE_BASE_URL${movies[index].posterPath}',
                                    width: 70,
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data![index].title ?? "None",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          movies[index].overview ?? "None",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
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
                                            ),
                                            Expanded(child: Container()),
                                            IconButton(
                                              onPressed: () {
                                                late MovieItemAdapter tes = new MovieItemAdapter();
                                                tes.id = movies[index].id.toString();
                                                tes.title = movies[index].title!;
                                                tes.rating = movies[index].voteAverage!;
                                                tes.image = movies[index].posterPath!;
                                                favoriteFilmBox.add(tes);
                                                

                                              },
                                              icon: Icon(
                                                Icons.favorite_border_outlined,
                                                color: color2,
                                                size: 25,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(color: color1)
                          ],
                        ),
                      );
                    });
              } else if (snapshot.hasError) {}
              ;
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
