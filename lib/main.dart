import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:programmer_app/callUs.dart';
import 'package:programmer_app/details.dart';
import 'file:///G:/flutter_project/programmer_app/lib/mainpage/mainpage.dart';
import 'package:programmer_app/pageview.dart';
import 'package:programmer_app/welcomepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مبرمجين',

      home:WelcomePage(),
      routes: <String,WidgetBuilder>{
        '/MainPage':(BuildContext context)=>new MainPage(),
        '/CallUs':(BuildContext context)=>new CallUs()
      } ,
      debugShowCheckedModeBanner: false,
      locale: Locale('ar',''),
      supportedLocales: [
        Locale('en',''),
        Locale('ar','')
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (currentlocal,supportedlocales){
        if(currentlocal != null){
          for(Locale locale in supportedlocales){
            if(currentlocal.languageCode==locale.languageCode){
              return currentlocal;
            }
          }

        }
        return supportedlocales.first;

      },
    );
  }
}

