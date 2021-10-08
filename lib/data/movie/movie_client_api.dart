import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'model/list_response.dart';
import 'model/movie_item_response.dart';

const String BASE_URL = 'https://api.themoviedb.org/3';
const String IMAGE_BASE_URL = 'https://image.tmdb.org/t/p/w500';
const String API_KEY = '526125b47288763c4b687f30f7193509';
const String LANGUAGE = 'en-US';

class MovieClientApi {
  final storage = FlutterSecureStorage();
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: 30000,
      sendTimeout: 30000,
    ),
  );

  Future<List<MovieItemResponse>?> getPopularMovies() async {
    List<MovieItemResponse>? movies;

    Response response = await _dio.get(
      '/movie/popular',
      queryParameters: {
        'api_key': API_KEY,
        'language': LANGUAGE,
      },
    );

    ListResponse<MovieItemResponse> moviesResponse =
        ListResponse<MovieItemResponse>.fromJson(response.data,
            (json) => MovieItemResponse.fromJson(json as Map<String, dynamic>));

    movies = moviesResponse.results;
    return movies;
  }
}
