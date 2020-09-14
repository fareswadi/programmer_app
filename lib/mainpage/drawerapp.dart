import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color(0xFF0F52BA),
                  Color(0xFF6593F5),
                  Color(0xFF4682B4),
                ],
                    stops: [
                  0.33,
                  0.66,
                  0.99
                ])),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage('images/laptopE.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: Text(
                    'الرئيسية',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: Text(
                    'الاشعارات',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: Text(
                    'تواصل معنا',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: Text(
                    'عن التطبيق',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.help_outline,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: Text(
                    'سياسة الاستخدام',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.pan_tool,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
