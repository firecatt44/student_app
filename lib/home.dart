import 'package:student_app/registrationform.dart';

import 'login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  
      
      home: Home(title: 'Homepage'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
          actions: <Widget>[
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.house, color: Colors.indigo),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home(
                          title: 'Homepage',
                        )));
              },
            ),
            SizedBox(
              width: 300,
            ),
      
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.rightFromBracket, color:Colors.indigo),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyLogin()));
                // login screen
              },
            ),
          ]),
      body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home.jpg"),
            fit: BoxFit.cover,
          )),
          
          child: Column(children: [
        SizedBox(
          height: 100,
        ),
        Container(
          width: double.infinity,
  decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        ),
        Column(      
          
            mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,   
          children: <Widget>[
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Colors.indigo),
              onPressed: () {
                 Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegistrationForm()));
                // login screen
              },
              icon: Icon(
                Icons.paste_outlined,
                size: 30.0,
              ),
              label: Text('Student Admissions', style: TextStyle(fontSize: 22),
             
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Colors.indigo),
              
              onPressed: () {
              },
              icon: const FaIcon(FontAwesomeIcons.person,
                size: 30.0,
              ),
              label: Text('My children', style: TextStyle(fontSize: 22)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Colors.indigo),
              onPressed: () {
              },
              icon: Icon(
                Icons.done,
                size: 30.0,
              ),
              label: Text('-', style: TextStyle(fontSize: 22)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Colors.indigo),
              onPressed: () {
              },
              icon: Icon(
                Icons.done,
                size: 30.0,
              ),
              label: Text('-', style: TextStyle(fontSize: 22)),
            ),
          ],
        ),

      ]))
      );
}

