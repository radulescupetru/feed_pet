import 'package:meta/meta.dart';

class FeedItem {
  final String petName;
  final String grams;
  final String fromTime;
  final String toTime;

  const FeedItem({
    @required this.petName,
    @required this.grams,
    @required this.fromTime,
    @required this.toTime
  })
      : assert(petName != null),
        assert(grams != null),
        assert(fromTime != null),
        assert(toTime != null);

  factory FeedItem.fromJson(Map<String, dynamic> json) {
    return FeedItem(
      petName: json['userId'].toString(),
      grams: json['id'].toString(),
      fromTime: json['title'].toString(),
      toTime: json['body'].toString(),
    );
  }
}
