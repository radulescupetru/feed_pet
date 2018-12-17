import 'package:flutter/material.dart';
import  'home.dart';
import 'package:feed_pet/model/feeding_repository.dart' as feedingRepository;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(data:feedingRepository.FeedingRepository.fetchPost()),

    );
  }
}

