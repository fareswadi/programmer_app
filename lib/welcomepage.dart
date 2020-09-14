import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:programmer_app/pageview.dart';
import 'package:splashscreen/splashscreen.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        SplashScreen(
          seconds:8,
          navigateAfterSeconds: Sweppage(),
        ),

        Container(
            width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('images/welcome2.jpg'),
                fit: BoxFit.cover
            )
        ),
        ),
      ],
    ) ;
  }
}
