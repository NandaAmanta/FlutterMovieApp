import 'package:json_annotation/json_annotation.dart';

part 'list_response.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class ListResponse<T> {
  @JsonKey(name: 'page')
  final int? page;

  @JsonKey(name: 'results')
  final List<T>? results;

  @JsonKey(name: 'total_page')
  final int? totalPages;

  @JsonKey(name: 'total_results')
  final int? totalResults;

  ListResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory ListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ListResponseFromJson(json, fromJsonT);
}