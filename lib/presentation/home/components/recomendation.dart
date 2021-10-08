import 'package:flutter/material.dart';
import 'package:suka_nonton/data/movie/model/movie_item_response.dart';
import 'package:suka_nonton/data/movie/movie_client_api.dart';
import 'package:suka_nonton/value/colors.dart';

class RecomendationWidget extends StatefulWidget {
  const RecomendationWidget({Key? key}) : super(key: key);

  @override
  RecomendationWidgetState createState() => RecomendationWidgetState();
}

class RecomendationWidgetState extends State<RecomendationWidget> {
  MovieClientApi movieClientApi = new MovieClientApi();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: movieClientApi.getPopularMovies(),
        builder: (context, AsyncSnapshot<List<MovieItemResponse>?> snapshot) {
          if (snapshot.hasData) {
            List<MovieItemResponse> movies = snapshot.data!;
            return Container(
              margin: EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 230,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                            child: Container(
                              width: 110,
                              height: 220,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Card(
                            color: color1,
                            elevation: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  '$IMAGE_BASE_URL${movies[index].posterPath}',
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      movies[index].title ?? "Unknown_server",
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
                          ),
                        )),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
