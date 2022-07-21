// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      list_name: json['list_name'] as String? ?? '',
      list_name_encoded: json['list_name_encoded'] as String? ?? '',
      bestsellers_date: json['bestsellers_date'] as String? ?? '',
      published_date: json['published_date'] as String? ?? '',
      published_date_description:
          json['published_date_description'] as String? ?? '',
      next_published_date: json['next_published_date'] as String? ?? '',
      previous_published_date: json['previous_published_date'] as String? ?? '',
      display_name: json['display_name'] as String? ?? '',
      normal_list_ends_at: json['normal_list_ends_at'] as int? ?? 0,
      updated: json['rank'] as String? ?? '',
      books: (json['books'] as List<dynamic>?)
              ?.map((e) => Books.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      corrections: json['corrections'] as List<dynamic>? ?? [],
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'list_name': instance.list_name,
      'list_name_encoded': instance.list_name_encoded,
      'bestsellers_date': instance.bestsellers_date,
      'published_date': instance.published_date,
      'published_date_description': instance.published_date_description,
      'next_published_date': instance.next_published_date,
      'previous_published_date': instance.previous_published_date,
      'display_name': instance.display_name,
      'normal_list_ends_at': instance.normal_list_ends_at,
      'rank': instance.updated,
      'books': instance.books.map((e) => e.toJson()).toList(),
      'corrections': instance.corrections,
    };
