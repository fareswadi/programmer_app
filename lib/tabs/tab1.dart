import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:programmer_app/callUs.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: ExactAssetImage('images/think.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2,
                    right: MediaQuery.of(context).size.width * 0.01,
                    child: Container(
                      width: 60,
                      height: 30,
                      child: Center(
                          child: Text(
                        'ما تفكر',
                        style: TextStyle(color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'فكر بس',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade700,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.36,
                          ),
                          IconButton(
                              icon: Icon(Icons.airline_seat_flat_angled),
                              color: Colors.blue.shade700,
                              iconSize: 28,
                              onPressed: () {})
                        ],
                      ),
                    ),
                    Card(
                      elevation: 2,
                      margin: EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'حلمك هيصير واقع ما تقلق',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              '#خطط بس',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                      child: RaisedButton(
                        onPressed: () {
                          return Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return CallUs();
                            }
                          ));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.black,width: 2)
                        ),
                        child: Text(
                          'تواصل معنا',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.deepOrange,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
/* Text(
          'العمل',
          style: TextStyle(
              color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),
        ),*/
