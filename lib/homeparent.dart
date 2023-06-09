import 'package:student_app/mychild/mainprofile.dart';
import 'package:student_app/mychild/profile.dart';
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
      appBar:  buildAppBar(),
    
      body: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home.jpeg"),
            fit: BoxFit.cover,
          )),
          
          child: Column(children: [
        
        Container(
          width: double.infinity,
  decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        ),
 Container(
  height: 42.0,
  width: double.infinity,
  color: Color.fromARGB(255, 46, 54, 97),
  child: Align(
alignment: Alignment(-0.8,-0.5),
     child: Text('Hello Parent!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
  color: Colors.white),
  ),
  )
  
),         
        Column(    
            
          // mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.start,   
          children: <Widget>[

           SizedBox(height: 10,),
       
        
            SizedBox(height: 100,),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Color.fromARGB(255, 71, 82, 147)),
              onPressed: () {
                 Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegistrationForm()));
            
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
              backgroundColor: Color.fromARGB(255, 71, 82, 147)),
              
              onPressed: () {
                 Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
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
              backgroundColor: Color.fromARGB(255, 71, 82, 147)),
              onPressed: () {
              },
              icon: Icon(
                Icons.view_day_sharp,
                size: 30.0,
              ),
              label: Text('-', style: TextStyle(fontSize: 22)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Color.fromARGB(255, 71, 82, 147)),
              onPressed: () {
              },
              icon: Icon(
                Icons.view_day_sharp,
                size: 30.0,
              ),
              label: Text('-', style: TextStyle(fontSize: 22)),
            ),
          ],
        ),

      ]))
      );

AppBar buildAppBar() {
  return 
      AppBar(
         toolbarHeight: 80,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
       title: Text('Home',
       
       style: TextStyle( fontSize: 22)),
       leading: IconButton(
    onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Home(
                           title: 'Homepage',
                        )));},
    icon: const FaIcon(FontAwesomeIcons.house),
  ),
         backgroundColor: Color.fromARGB(255, 46, 54, 97),
          actions: <Widget>[
          
      
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.rightFromBracket),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyLogin()));
                // login screen
              },
            ),
          ]);
  
}

}

