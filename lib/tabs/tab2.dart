import 'package:flutter/material.dart';
class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, index){
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
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.25,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: ExactAssetImage('images/teach.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.2025,
                    right: MediaQuery.of(context).size.width*0.047,
                    child: Container(
                      width: 55,
                      height: 30,
                      child: Center(child: Text('ما تقلق',style: TextStyle(color: Colors.white),)),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30),)
                      ),
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
                          Text('ركز بس',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue.shade700,fontSize: 18),),
                          SizedBox(width: MediaQuery.of(context).size.width*0.36,),
                          IconButton(icon: Icon(Icons.wb_incandescent),color: Colors.blue.shade700, iconSize: 28,onPressed: (){})
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
                            child: Text('هدف الاحتراف هيتحقق',style: TextStyle(fontSize: 20, ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text('#اشترك بس',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.purple,fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.black,width: 2)
                          ),
                          child: Text(
                            'التفاصيل',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.deepOrange,
                        ),
                        SizedBox(width: 15,),
                        RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.black,width: 2)
                          ),
                          child: Text(
                            'اشترك',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.deepOrange,
                        )
                      ],
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
