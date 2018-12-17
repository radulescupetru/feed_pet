import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:feed_pet/model/feed_item.dart';

class CustomCard extends StatelessWidget {

  final String petName;
  final String grams;
  final String fromTime;
  final String toTime;
  const CustomCard({
    @required this.petName,
    @required this.fromTime,
    @required this.grams,
    @required this.toTime,

  });

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
                    Text(this.petName)
                  ],

                ),
                Row(
                  children: <Widget>[
                    Text("GRAMS:", style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 5,),
                    Text(this.grams)
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
                    Text(this.fromTime)
                  ],

                ),
                Row(
                  children: <Widget>[
                    Text("TO:", style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 5,),
                    Text(this.toTime)
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