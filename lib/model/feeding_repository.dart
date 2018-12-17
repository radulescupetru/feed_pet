import 'package:feed_pet/model/feed_item.dart';
import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:feed_pet/customs/custom_card.dart';
import 'package:http/http.dart' as  http;



class FeedingRepository {

  static void feedNow(){
    print("Entered feed now function");
//    http.post("");
  }

  static List<CustomCard> getCardsFromData(data){
    List<CustomCard>cards = [];
//    data = data['items'];
    for(var i in data){
      cards.add(CustomCard(petName: i["id"].toString(), fromTime: i["userId"].toString(), grams: i["id"].toString(), toTime: i["userId"].toString()));
    }
    return cards;
  }

  static Future<List<dynamic>> fetchPost() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
//      List<FeedItem>feedItems=[];
//      var data = json.decode(response.body);
//      for(var feedItem in data){
//        feedItems.add(FeedItem(petName: feedItem.petName, grams: feedItem.grams, fromTime: feedItem.fromTime, toTime: feedItem.toTime));
//      }
      return json.decode(response.body);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}