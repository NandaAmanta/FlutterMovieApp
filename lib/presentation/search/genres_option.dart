import 'package:flutter/material.dart';
import 'package:suka_nonton/data/movie/movie_client_api.dart';
import 'package:suka_nonton/data/movie/model/genres_response.dart';

class GenresOption extends StatelessWidget {
  const GenresOption({
    Key? key,
    required this.movieClientApi,
  }) : super(key: key);

  final MovieClientApi movieClientApi;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        height: 30,
        child: FutureBuilder(
          future: movieClientApi.getGenresMovies(),
          builder: (context, AsyncSnapshot<Genres> snapshot) {
            if (snapshot.hasData) {
              Genres genres = snapshot.data!;
              return Container(
                child: ListView.builder(
                  itemCount: genres.genres!.length,
                  itemBuilder: (context,index){
                  return Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left:5,right: 5 ),
                    child: Text(genres.genres![index]!["name"],style: TextStyle(color: Colors.white))
                  );
                },scrollDirection: Axis.horizontal,),
                
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ));
  }
}