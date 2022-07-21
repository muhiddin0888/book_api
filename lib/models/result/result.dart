import 'package:api_4/models/books/books.dart';
import 'package:api_4/models/buy_links/buy_links.dart';
import 'package:api_4/models/isbns/isbns.dart';
import 'package:json_annotation/json_annotation.dart';
part 'result.g.dart';

@JsonSerializable(explicitToJson: true)
class Result {
  @JsonKey(defaultValue: '', name: 'list_name')
  String list_name;
  @JsonKey(defaultValue: '', name: 'list_name_encoded')
  String list_name_encoded;
  @JsonKey(defaultValue: '', name: 'bestsellers_date')
  String bestsellers_date;
  @JsonKey(defaultValue: '', name: 'published_date')
  String published_date;
  @JsonKey(defaultValue: '', name: 'published_date_description')
  String published_date_description;
  @JsonKey(defaultValue: '', name: 'next_published_date')
  String next_published_date;
  @JsonKey(defaultValue: '', name: 'previous_published_date')
  String previous_published_date;
  @JsonKey(defaultValue: '', name: 'display_name')
  String display_name;
  @JsonKey(defaultValue: 0, name: 'normal_list_ends_at')
  int normal_list_ends_at;
  @JsonKey(defaultValue: '', name: 'rank')
  String updated;
  @JsonKey(defaultValue: const [], name: 'books')
  List<Books> books;
  @JsonKey(defaultValue: const [], name: 'corrections')
  List<dynamic> corrections;

  Result({
    required this.list_name,
    required this.list_name_encoded,
    required this.bestsellers_date,
    required this.published_date,
    required this.published_date_description,
    required this.next_published_date,
    required this.previous_published_date,
    required this.display_name,
    required this.normal_list_ends_at,
    required this.updated,
    required this.books,
    required this.corrections,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
