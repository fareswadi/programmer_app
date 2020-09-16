import 'package:flutter/material.dart';
import 'dart:math'as math;
class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('معلومات عنا'),
      backgroundColor: Colors.blueAccent.shade700,
      centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade100,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(
             image: DecorationImage(image: ExactAssetImage('images/location.jpg'),
             fit: BoxFit.cover)
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height*0.23,
            right: MediaQuery.of(context).size.width*0.055,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.9,
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.location_on,color: Colors.blueAccent.shade700,size: 32,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('موقعنا',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 20,),),
                              Text('Gaza_hmdanResterant_floor1',style: TextStyle(color: Colors.grey,fontSize: 18),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                  width: MediaQuery.of(context).size.width*0.9
                  , child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Transform(alignment: Alignment.center,transform: Matrix4.rotationY(math.pi),child: Icon(Icons.phone_in_talk,color: Colors.blueAccent.shade700,size: 32,)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('رقم الجوال',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 20,),),
                              Text('0592771391',style: TextStyle(color: Colors.grey,fontSize: 18),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9
                    ,child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.email,color: Colors.blueAccent.shade700,size: 32,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('الايميل',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 20,),),
                              Text('wadifarisn@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 18),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.13
                  ,child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage('images/inst.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage('images/facebook.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage('images/whats.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage('images/twitter.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.info_outline,color: Colors.blueAccent.shade700,size: 32,),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('نبذة عنا',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 20,),),
                              Text('يكفي قول واثق الخطى يمشي ملكاً',style: TextStyle(color: Colors.grey,fontSize: 18),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
