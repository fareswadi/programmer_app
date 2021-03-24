import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:programmer_app/callUs.dart';
import 'package:programmer_app/details.dart';
import 'package:programmer_app/information.dart';
import 'package:programmer_app/mainpage/mainpage.dart';
import 'package:programmer_app/notification.dart';
import 'package:programmer_app/pageview.dart';
import 'package:programmer_app/using.dart';
import 'package:programmer_app/welcomepage.dart';


void main() {
  runApp(WelcomePage());
}
TextDirection currentTextDir = TextDirection.rtl;
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مبرمجين',

      home:Directionality(
          textDirection: currentTextDir,
          child: Sweppage(),),
      routes: <String,WidgetBuilder>{
        '/MainPage':(BuildContext context)=> MainPage(),
        '/CallUs':(BuildContext context)=>new CallUs()
      } ,
      debugShowCheckedModeBanner: false,
      locale:  Locale("ar", "AE"),
      supportedLocales: [
        Locale('ar','UK'),
        Locale('en','AE'),

      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
     /* localeResolutionCallback: (currentlocal,supportedlocales){
        if(currentlocal != null){
          for(Locale locale in supportedlocales){
            if(currentlocal.languageCode==locale.languageCode){

              return currentlocal;
            }
          }

        }
        return supportedlocales.first;

      },*/
    );
  }
}

