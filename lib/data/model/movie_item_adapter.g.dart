// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieItemAdapterAdapter extends TypeAdapter<MovieItemAdapter> {
  @override
  final int typeId = 0;

  @override
  MovieItemAdapter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieItemAdapter()
      ..id = fields[0] as String
      ..title = fields[1] as String
      ..rating = fields[2] as double
      ..image = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, MovieItemAdapter obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.rating)
      ..writeByte(3)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieItemAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
