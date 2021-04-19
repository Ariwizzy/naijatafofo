import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:superlegit_app/Screens/list.dart';
import 'package:superlegit_app/Screens/stories.dart';
import 'Screens/history.dart';
import 'Screens/fact.dart';
import 'Screens/contact.dart';
import 'Screens/lifehack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naijatatafo Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
        //imageBackground: NetworkImage("https://bit.ly/3qMuS8M"),
          seconds: 5,
          navigateAfterSeconds:  CNN(),
          title: new Text('The Knowledge Bank',style:  GoogleFonts.ptSerif(fontWeight: FontWeight.w600,color: Colors.grey[300],fontSize: 18),),
          image: new Image.asset("images/logo.jpeg"),
          loadingText: Text("OG Dev",style:  GoogleFonts.italiana(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.grey[300]),),
          backgroundColor: Colors.black,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          loaderColor: Colors.grey[600]
      ),
      routes: {
        BBC.RouteName:(context)=>BBC(),
        CNN.RouteName:(context)=>CNN(),
        NairaLand.RouteName:(context)=>NairaLand(),
        Contact.RouteName:(context)=>Contact(),
        List.RouteName:(context)=>List(),
        Stories.RouteName:(context)=>Stories(),
      },
    );
  }
}

