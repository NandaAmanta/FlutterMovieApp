import 'dart:ffi';

import "package:hive/hive.dart";

part 'movie_item_adapter.g.dart';

@HiveType(typeId: 0)
class MovieItemAdapter extends HiveObject {
  @HiveField(0)
  late String id;
  
  @HiveField(1)
  late String title;
  
  @HiveField(2)
  late double rating;

  @HiveField(3)
  late String image;

}
