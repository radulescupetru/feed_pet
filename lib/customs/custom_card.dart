import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:feed_pet/model/feed_item.dart';

class CustomCard extends StatelessWidget {

  final FeedItem feedItem;
  const CustomCard({
    @required this.feedItem,
  })  : assert(feedItem != null);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 70,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("PET:", style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 5,),
                    Text(this.feedItem.petName)
                  ],

                ),
                Row(
                  children: <Widget>[
                    Text("GRAMS:", style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 5,),
                    Text(this.feedItem.grams)
                  ],

                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("FROM:", style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 5,),
                    Text(this.feedItem.fromTime)
                  ],

                ),
                Row(
                  children: <Widget>[
                    Text("TO:", style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 5,),
                    Text(this.feedItem.toTime)
                  ],

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}