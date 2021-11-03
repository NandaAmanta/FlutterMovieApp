import 'package:flutter/material.dart';
import 'package:suka_nonton/presentation/home/components/recent.dart';
import 'package:suka_nonton/value/colors.dart';
import 'package:suka_nonton/data/movie/movie_client_api.dart';
import 'package:suka_nonton/data/movie/model/genres_response.dart';
import 'search_bar.dart';
import 'genres_option.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  MovieClientApi movieClientApi = new MovieClientApi();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchBar(),
          GenresOption(movieClientApi: movieClientApi),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Recent(),
          )
        ],
      ),
    );
  }
}




