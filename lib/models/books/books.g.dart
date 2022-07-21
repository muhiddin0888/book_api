// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Books _$BooksFromJson(Map<String, dynamic> json) => Books(
      rank: json['rank'] as int? ?? 0,
      rank_last_week: json['rank_last_week'] as int? ?? 0,
      weeks_on_list: json['weeks_on_list'] as int? ?? 0,
      asterisk: json['asterisk'] as int? ?? 0,
      dagger: json['dagger'] as int? ?? 0,
      primary_isbn10: json['primary_isbn10'] as String? ?? '',
      primary_isbn13: json['primary_isbn13'] as String? ?? '',
      publisher: json['publisher'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: json['price'] as String? ?? '',
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      contributor: json['contributor'] as String? ?? '',
      contributor_note: json['contributor_note'] as String? ?? '',
      book_image: json['book_image'] as String? ?? '',
      book_image_width: json['book_image_width'] as int? ?? 0,
      book_image_height: json['book_image_height'] as int? ?? 0,
      amazon_product_url: json['amazon_product_url'] as String? ?? '',
      age_group: json['age_group'] as String? ?? '',
      book_review_link: json['book_review_link'] as String? ?? '',
      first_chapter_link: json['first_chapter_link'] as String? ?? '',
      sunday_review_link: json['sunday_review_link'] as String? ?? '',
      article_chapter_link: json['article_chapter_link'] as String? ?? '',
      isbns: (json['isbns'] as List<dynamic>?)
              ?.map((e) => Isbns.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      buy_links: (json['buy_links'] as List<dynamic>?)
              ?.map((e) => BuyLinks.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      book_uri: json['book_uri'] as String? ?? '',
    );

Map<String, dynamic> _$BooksToJson(Books instance) => <String, dynamic>{
      'rank': instance.rank,
      'rank_last_week': instance.rank_last_week,
      'weeks_on_list': instance.weeks_on_list,
      'asterisk': instance.asterisk,
      'dagger': instance.dagger,
      'primary_isbn10': instance.primary_isbn10,
      'primary_isbn13': instance.primary_isbn13,
      'publisher': instance.publisher,
      'description': instance.description,
      'price': instance.price,
      'title': instance.title,
      'author': instance.author,
      'contributor': instance.contributor,
      'contributor_note': instance.contributor_note,
      'book_image': instance.book_image,
      'book_image_width': instance.book_image_width,
      'book_image_height': instance.book_image_height,
      'amazon_product_url': instance.amazon_product_url,
      'age_group': instance.age_group,
      'book_review_link': instance.book_review_link,
      'first_chapter_link': instance.first_chapter_link,
      'sunday_review_link': instance.sunday_review_link,
      'article_chapter_link': instance.article_chapter_link,
      'isbns': instance.isbns.map((e) => e.toJson()).toList(),
      'buy_links': instance.buy_links.map((e) => e.toJson()).toList(),
      'book_uri': instance.book_uri,
    };
