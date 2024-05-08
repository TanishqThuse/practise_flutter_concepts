//Day 1 : Flutter basics concepts and all
//Day 2 : Simple login page and all
//Day 3 : Simple code
//Day 4 : FInally adding image to login page and wiriting a bit code for it
//Day 5 : More on routing of flutter -> Stateless and stateful widgets finally understood
//Day 6 : More on statefull widget and animations, login simultaneously name display etc
//Day 7 : More on animations and routing, QnA on Flutter MCQ, Revision of all concepts
//Day 8 : Adding validation of username and password being added by user, also password > 3 char & more stuff

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practise_flutter_concepts/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_flutter_concepts/utils/routes.dart';

//no hot reload => Stateless widget is data-less => we use this when we don't bother doing hot reload muhc often
//We do not hot reload => Statefull widget is full of data => if a project required more hot reload we use it 
// => agar kuch change ayega to use karo statefull agar changes nhi ayege uski state me to statless
// Example : Bank apps me statefull use karo as money changes
// College ka ghatiya app fees bharne ke bhad bhi no show  Stateless


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
      MyRoutes.homeRoute : (context) => HomePage(),
      MyRoutes.loginRoute:(context) => LoginPage(),
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
          // child: (Text("31 hours flutter one shot")),
          child: ElevatedButton(
            child: Text("Go to Login Page"),
            onPressed: () => {
              Navigator.pushNamed(context, MyRoutes.loginRoute)
            }
            //Now we must make sure user always writes name and password before login working
          ),
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