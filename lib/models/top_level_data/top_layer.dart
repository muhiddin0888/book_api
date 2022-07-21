import 'package:api_4/models/result/result.dart';
import 'package:json_annotation/json_annotation.dart';
part 'top_layer.g.dart';

@JsonSerializable()
class BookModel {
  @JsonKey(defaultValue: '', name: 'status')
  String status;
  @JsonKey(defaultValue: '', name: 'copyright')
  String copyright;
  @JsonKey(defaultValue: 0, name: 'num_results')
  int num_results;
  @JsonKey(defaultValue: '', name: 'last_modified')
  String last_modified;
  @JsonKey(name: 'results')
  Result results;

  BookModel({
    required this.status,
    required this.copyright,
    required this.num_results,
    required this.last_modified,
    required this.results,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
