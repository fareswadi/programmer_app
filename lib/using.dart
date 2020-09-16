import 'package:flutter/material.dart';
class Using extends StatefulWidget {
  @override
  _UsingState createState() => _UsingState();
}

class _UsingState extends State<Using> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('سياسة الاستخدام'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(width: MediaQuery.of(context).size.width*0.9,
                child: Card(child: Text('معاملتنا حسب معاملتك و نحن الأفضل',style: TextStyle(fontSize: 20,color: Colors.grey),))),
          )
        ],
      ),
    );
  }
}

