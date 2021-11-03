import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'genres_response.g.dart';

@JsonSerializable()

class Genres{

  @JsonKey(name:'genres')
  final List<Map<String,dynamic>?>? genres;

  Genres({
    this.genres
  });

  factory Genres.fromJson(Map<String,dynamic> json) =>
    _$GenresFromJson(json);
}