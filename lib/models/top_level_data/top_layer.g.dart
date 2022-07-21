// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_layer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      status: json['status'] as String? ?? '',
      copyright: json['copyright'] as String? ?? '',
      num_results: json['num_results'] as int? ?? 0,
      last_modified: json['last_modified'] as String? ?? '',
      results: Result.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'num_results': instance.num_results,
      'last_modified': instance.last_modified,
      'results': instance.results,
    };
