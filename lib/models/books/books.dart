import 'package:api_4/models/buy_links/buy_links.dart';
import 'package:api_4/models/isbns/isbns.dart';
import 'package:json_annotation/json_annotation.dart';
part 'books.g.dart';

@JsonSerializable(explicitToJson: true)
class Books {
  @JsonKey(
    defaultValue: 0,
    name: 'rank',
  )
  int rank;
  @JsonKey(
    defaultValue: 0,
    name: 'rank_last_week',
  )
  int rank_last_week;
  @JsonKey(
    defaultValue: 0,
    name: 'weeks_on_list',
  )
  int weeks_on_list;
  @JsonKey(
    defaultValue: 0,
    name: 'asterisk',
  )
  int asterisk;
  @JsonKey(
    defaultValue: 0,
    name: 'dagger',
  )
  int dagger;
  @JsonKey(
    defaultValue: "",
    name: 'primary_isbn10',
  )
  String primary_isbn10;
  @JsonKey(
    defaultValue: "",
    name: 'primary_isbn13',
  )
  String primary_isbn13;
  @JsonKey(
    defaultValue: "",
    name: 'publisher',
  )
  String publisher;
  @JsonKey(
    defaultValue: "",
    name: 'description',
  )
  String description;
  @JsonKey(
    defaultValue: "",
    name: 'price',
  )
  String price;
  @JsonKey(
    defaultValue: "",
    name: 'title',
  )
  String title;
  @JsonKey(
    defaultValue: "",
    name: 'author',
  )
  String author;
  @JsonKey(
    defaultValue: "",
    name: 'contributor',
  )
  String contributor;
  @JsonKey(
    defaultValue: "",
    name: 'contributor_note',
  )
  String contributor_note;
  @JsonKey(
    defaultValue: "",
    name: 'book_image',
  )
  String book_image;
  @JsonKey(
    defaultValue: 0,
    name: 'book_image_width',
  )
  int book_image_width;
  @JsonKey(
    defaultValue: 0,
    name: 'book_image_height',
  )
  int book_image_height;
  @JsonKey(
    defaultValue: "",
    name: 'amazon_product_url',
  )
  String amazon_product_url;
  @JsonKey(
    defaultValue: "",
    name: 'age_group',
  )
  String age_group;
  @JsonKey(
    defaultValue: "",
    name: 'book_review_link',
  )
  String book_review_link;
  @JsonKey(
    defaultValue: "",
    name: 'first_chapter_link',
  )
  String first_chapter_link;
  @JsonKey(
    defaultValue: "",
    name: 'sunday_review_link',
  )
  String sunday_review_link;
  @JsonKey(
    defaultValue: "",
    name: 'article_chapter_link',
  )
  String article_chapter_link;
  @JsonKey(
    defaultValue: [],
    name: 'isbns',
  )
  List<Isbns> isbns;
  @JsonKey(
    defaultValue: [],
    name: 'buy_links',
  )
  List<BuyLinks> buy_links;
  @JsonKey(defaultValue: "", name: 'book_uri')
  String book_uri;
//

  Books({
    required this.rank,
    required this.rank_last_week,
    required this.weeks_on_list,
    required this.asterisk,
    required this.dagger,
    required this.primary_isbn10,
    required this.primary_isbn13,
    required this.publisher,
    required this.description,
    required this.price,
    required this.title,
    required this.author,
    required this.contributor,
    required this.contributor_note,
    required this.book_image,
    required this.book_image_width,
    required this.book_image_height,
    required this.amazon_product_url,
    required this.age_group,
    required this.book_review_link,
    required this.first_chapter_link,
    required this.sunday_review_link,
    required this.article_chapter_link,
    required this.isbns,
    required this.buy_links,
    required this.book_uri,
  });

  factory Books.fromJson(Map<String, dynamic> json) => _$BooksFromJson(json);

  Map<String, dynamic> toJson() => _$BooksToJson(this);
}
