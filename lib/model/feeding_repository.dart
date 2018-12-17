import 'package:feed_pet/model/feed_item.dart';
import 'dart:async' show Future;
import 'dart:convert';
import 'package:feed_pet/customs/custom_card.dart';
import 'package:http/http.dart' as  http;



class FeedingRepository{
  static List<CustomCard> loadFeedItems(){
    Future<String> response = fetchPost();
    final parsed = json.decode(response.toString());
    final feedCards = [];
    final feedItems = (parsed as List).map<FeedItem>((json) =>
    new FeedItem.fromJson(json)).toList();
    for(int i=0;i<=feedItems.length;i++){
      feedCards.add(CustomCard(feedItem: feedItems.elementAt(i),));
    }
    return feedCards;
  }
  static Future<String> fetchPost() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSOn
      return response.body;
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}