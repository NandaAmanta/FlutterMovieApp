// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return Genres(
    genres: (json['genres'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>?)
        .toList(),
  );
}

Map<String, dynamic> _$GenresToJson(Genres instance) => <String, dynamic>{
      'genres': instance.genres,
    };
