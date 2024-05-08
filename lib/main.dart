//Day 1 : Flutter basics concepts and all
//Day 2 : Simple login page and all
//Day 3 : 

import 'package:flutter/material.dart';
import 'package:practise_flutter_concepts/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
Widget build(BuildContext context) {
  return MaterialApp(
    // home: HomePage(),
    themeMode : ThemeMode.light,
    theme : ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
    ),

    initialRoute: "/home",

    routes: { //routes are just like pune metro routes
      "/" : (context) => LoginPage(),
      // "/" : (context) => new LoginPage(), both are same
      // which means dart compiler is smart enought to make us not mention new for creating object of LoginPage class even though it is an object
      // "/home" : (context) => HomePage(),
      "/login":(context) => LoginPage(),
    },

    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
    ); 
}
}

class HomePage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Container(
          child: (Text("31 hours flutter one shot")),
          // Your widget code here
        );
      }
    }

//FUncyion important points
//@required is used to make the parameter mandatory -> thaila ko sirf true ya fir false bolna padega
//{} gives a default value of 100 to ruppees if no value is passed
//even if ruppes is not written we do not get any error

bringVegetables({@required bool thaila = false , int ruppees = 100}) {
  print('Bring Vegetables');
}