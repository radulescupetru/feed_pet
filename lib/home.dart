import 'package:flutter/material.dart';
import 'package:feed_pet/customs/custom_card.dart';
import 'model/feeding_repository.dart' as feedingRepository;


//class _HomeState extends State<Home> {
//  List<CustomCard> customCards;
//
//  @override
//  void initState() {
//    super.initState();
//    customCards = feedingRepository.FeedingRepository.loadFeedItems();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return null;
//  }
//}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .25,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'FEEDPET',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                    decoration: TextDecoration.none
                  ),
                ),

              ),
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .75,
              color: Colors.white,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15,
                  right: 20.0,
                  left: 20.0
              ),
              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.fromLTRB(5,10,0,0),
                        child:
                        Text(
                          "Eating stats",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        )),
                    Expanded(
                      child: ListView(
                        children:
                          feedingRepository.FeedingRepository.loadFeedItems()
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0,10,0,10),
                      child:
                        SizedBox(
                          width: double.infinity,
                          height: 50,

                          child:
                          RaisedButton(
                            child: Text("Feed now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w800
                            ),),
                            elevation: 4,
                            onPressed: (){},
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(20),

                          ),
                        )
                    )


                  ]
              ),
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.18,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 150.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: 
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: new BorderRadius.circular(54.0),
                            child: Image.network(
                              'http://www.placehold.it/70x70',
                              height: 70.0,
                              width: 70.0,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Radulescu Petru",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18
                          ),)
                        ],
                      ),
                    )
                  ),
                  Center(
                    child:
                      Text("35%",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: Colors.blueAccent
                        ),)
                  )
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}

