import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superlegit_app/Screens/history.dart';
import 'package:superlegit_app/Screens/fact.dart';
import 'package:superlegit_app/Screens/contact.dart';
import 'package:superlegit_app/Screens/lifehack.dart';
import 'package:superlegit_app/Screens/list.dart';
import 'package:superlegit_app/Screens/stories.dart';

import 'package:url_launcher/url_launcher.dart';
class Dwidget extends StatelessWidget {
  Container listCon(String _text, IconData _icon, Function _tap) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 31,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(
          child: ListTile(
            onTap: _tap,
            title: Text(
              _text,
              style: TextStyle(color: Colors.grey[600]),
            ),
            leading: Icon(
              _icon,
              color: Colors.grey[500],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Image.asset("images/logo.jpeg"),
            // Image.network("https://i0.wp.com/www.iamjillstephenson.com/wp-content/uploads/2018/06/Jill-Stephenson-The-World-News-Logo.png?ssl=1"),
            listCon("Facts", Icons.menu_book, () {
              Navigator.pushReplacementNamed(context, CNN.RouteName);
            }),
            listCon("History", Icons.menu_book_outlined, () {
              Navigator.pushReplacementNamed(context, BBC.RouteName);
            }),
            listCon("Life Hack", Icons.menu_book_outlined, () {
              Navigator.pushReplacementNamed(context, NairaLand.RouteName);
            }),
            listCon("Stories", Icons.menu_book_outlined, () {
              Navigator.pushReplacementNamed(context, Stories.RouteName);
            }),
            listCon("Lists", Icons.menu_book_outlined, () {
              Navigator.pushReplacementNamed(context, List.RouteName);
            }),
            // listCon("MP3Bullet", Icons.music_note_sharp, () {
            //   Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(
            //       builder: (context) => MP3Bullet(),
            //     ),
            //   );
            // }),
            // listCon("Novice2Star", Icons.music_note_sharp, () {
            //   Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(
            //       builder: (context) => Novice2Star(),
            //     ),
            //   );
            // }),
            listCon("Contact Developer", Icons.perm_contact_calendar, () {
              Navigator.pushReplacementNamed(context, Contact.RouteName);
            }),
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width /4,top: MediaQuery.of(context).size.height /99,),
              child: GestureDetector(
                  onTap: _youtube,
                  child: Text("OG Dev",style:  GoogleFonts.italiana(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey[900]),)),
            ),
          ],
        ),
      ),
    );
  }
}
_youtube() async {
  const url = 'https://www.youtube.com/channel/UCcHmauIeFjQZGw5ZGRn2f8g';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}