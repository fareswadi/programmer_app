import 'package:flutter/material.dart';
import 'package:programmer_app/mainpage/drawerapp.dart';
import 'package:programmer_app/tabs/tab1.dart';
import 'package:programmer_app/tabs/tab2.dart';
import 'package:google_fonts/google_fonts.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  @override
  TabController _tabcontroller;

  @override
  void initState() {
    _tabcontroller=TabController(length: 2, vsync: this,initialIndex: 0);
  }


  @override
  void dispose() {
    _tabcontroller.dispose();
  }

  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.tajawal().fontFamily,
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent.shade700,
          title: Text('الرئيسية'),

        ),
        drawer: DrawerPage(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: menutab()
        ),
      ),
    );
  }
  menutab(){
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color:Colors.grey.shade300
          ),
          child: TabBar(
              labelColor: Colors.blueAccent.shade700,
              unselectedLabelStyle: TextStyle(color: Colors.red,fontSize: 16),
              labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),
              indicator: BoxDecoration(),
              controller:_tabcontroller ,
              tabs: [
            Tab(
              text: 'شغلك علينا',
            ),
            Tab(
              text: 'تعليمك علينا',
            ),
          ],
          ),
        ),
        Flexible(
          child: TabBarView(
              controller: _tabcontroller,
              children: [
                 Tab1(),
                Tab2()

          ]),
        )
      ],
    );

  }
}
