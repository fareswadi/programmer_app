import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CallUs extends StatefulWidget {
  @override
  _CallUsState createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.tajawal().fontFamily
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('التواصل معنا'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent.shade700,
          elevation: 0,
        ),

        body: Stack(
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
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        rigthconversion(),
                        leftconversion(),
                        rigthconversion(),
                        leftconversion(),
                        rigthconversion(),
                        leftconversion(),
                        rigthconversion(),
                        leftconversion(),
                        rigthconversion(),
                        leftconversion(),

                      ],
                    ),
                  ),
                ),
                Form(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'اكتب ما يخطر في بالك...',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Colors.white)
                              ),
                              enabledBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Colors.white)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Colors.white)
                              ),focusColor: Colors.white,
                              fillColor: Colors.white,
                              filled: true,
                              labelStyle: TextStyle(
                                  color: Colors.white
                              )
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(MediaQuery.of(context).size.width*-0.85, 20),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 35,
                              height: 35,
                              child: Icon(Icons.send,color: Colors.white,),
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
                                      ],
                                  ),
                              shape: BoxShape.circle
                              ),
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }

  rigthconversion() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('images/con1.png'),
            fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ) ,
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('السلام عليكم',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,),),
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
      )
      ],
    );
  }

  leftconversion() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('و عليكم السلام',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,)),
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('images/con2.jpg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ) ,

      ],
    );
  }
}
