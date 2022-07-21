import 'package:json_annotation/json_annotation.dart';
part 'isbns.g.dart';

@JsonSerializable(explicitToJson: true)
class Isbns {
  @JsonKey(
    defaultValue: " ",
    name: 'isbn10',
  )
  String isbn10;
  @JsonKey(
    defaultValue: "",
    name: 'isbn13',
  )
  String isbn13;

  Isbns({
    required this.isbn10,
    required this.isbn13,
  });

  factory Isbns.fromJson(Map<String, dynamic> json) => _$IsbnsFromJson(json);

  Map<String, dynamic> toJson() => _$IsbnsToJson(this);
}
