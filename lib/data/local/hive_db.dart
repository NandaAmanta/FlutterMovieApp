import 'package:hive_flutter/hive_flutter.dart';
import 'package:suka_nonton/data/model/movie_item_adapter.dart';



class HiveDb{
  static String BOXNAME_FAVORITE_FILM = "MY-FAVORITE-FILM";
  Future<void> initHiveDataBase() async {
    // Init Hive Setup
    await Hive.initFlutter();

    // Register Custom Objects
    Hive.registerAdapter(MovieItemAdapterAdapter());

    // Open Boxes
    await Hive.openBox<MovieItemAdapter>(BOXNAME_FAVORITE_FILM);
  }

  Box<MovieItemAdapter> openMovieItemBox(){
    return Hive.box<MovieItemAdapter>(BOXNAME_FAVORITE_FILM);
  }

  Future<void> close()async{
    await Hive.close();
  }

}