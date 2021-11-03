// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse<T> _$ListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return ListResponse<T>(
    page: json['page'] as int?,
    results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
    totalPages: json['total_page'] as int?,
    totalResults: json['total_results'] as int?,
  );
}

Map<String, dynamic> _$ListResponseToJson<T>(
  ListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results?.map(toJsonT).toList(),
      'total_page': instance.totalPages,
      'total_results': instance.totalResults,
    };
