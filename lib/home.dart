import 'package:flutter/material.dart';
import 'model/feeding_repository.dart' as feedingRepository;
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatelessWidget {
  final Future<List<dynamic>> data;
  Home({Key key, this.data}) : super(key: key);
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
                      child:
                            Center(
                              child: FutureBuilder<List<dynamic>>(
                                future: data,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    final items = feedingRepository.FeedingRepository.getCardsFromData(snapshot.data);
                                  return ListView(
                                    children:items
                                  );
                                  } else if (snapshot.hasError) {
                                    return Text("Error");
                                  }
                                  // By default, show a loading spinner
                                  return CircularProgressIndicator();
                                },
                              ),
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
                            onPressed: (){
                              feedingRepository.FeedingRepository.feedNow();
                            },
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
                          Text("Radulescu Petru's pets",
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
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.35,
                      center: new Text("35%"),
                      progressColor: Colors.blueAccent,
                      footer: new Text(
                        "Food container status",
                        style:
                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                    )
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

