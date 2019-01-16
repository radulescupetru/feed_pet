import 'dart:async' show Future;
import 'dart:convert';
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
      cards.add(CustomCard(petName: i["pet_name"].toString(), fromTime: i["from"].toString(), grams: i["grams"].toString(), toTime: i["to"].toString()));
    }
    return cards;
  }

  static Future<List<dynamic>> fetchPost() async {
    final response =
    await http.get('https://8543799d-3fda-41ba-8b9d-2f5e88bca1e6.mock.pstmn.io/getEatingInformation');

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  static Future<double> getContainerPercent() async{
    final response = await http.get("https://8543799d-3fda-41ba-8b9d-2f5e88bca1e6.mock.pstmn.io/getContainerInformation");
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      // If that call was not successful, throw an error.
      return 0.0;
    }
  }
}