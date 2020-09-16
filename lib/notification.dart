import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Notificationpage extends StatefulWidget {
  @override
  _NotificationpageState createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاشعارات'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: ListView.builder(itemCount: 5,itemBuilder: (BuildContext context ,index){
        return Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                    color: Colors.blueAccent.shade700,
                    shape: BoxShape.circle
                  )
                  ,child: Icon(Icons.notifications_active,size: 28,color: Colors.white,)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('دورة تدريبة جديدة',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 20,),),
                    Text('الموعد الساعة 4 المسا يوم الأحد',style: TextStyle(color: Colors.grey.shade600),)
                  ],
                ),
                Transform.translate(
                    offset: Offset(
                        MediaQuery.of(context).size.width*-0.1,
                        MediaQuery.of(context).size.height*-0.125
                    )
                    ,child: Text('18/8/2000',style: TextStyle(color: Colors.grey),))

              ],
            ),
            Divider(height: 5,)
          ],
        );
      }),
    );
  }
}
