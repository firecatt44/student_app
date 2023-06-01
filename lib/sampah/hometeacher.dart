import '../login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({super.key});
 

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar:  buildAppBar(),
    
      body: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home2.jpeg"),
            fit: BoxFit.cover,
          )),
          
          child: Column(children: [
        
        Container(
          width: double.infinity,
  decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home2.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        ),
 Container(

  height: 42.0,
  width: double.infinity,
  color: Color.fromARGB(255, 172, 157, 19),
),         
        Column(      
          // mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.start,   
          children: <Widget>[

      //  const Text('Hello Teacher!', textAlign: TextAlign.left
      //       , style: TextStyle(fontSize:27, color: Color.fromARGB(255, 125, 114, 9) , fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
       
        
            SizedBox(height: 100,),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Color.fromARGB(255, 210, 194, 50)),
              onPressed: () {
                //  Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => RegistrationForm()));
             
              },
              icon: Icon(
                Icons.paste_outlined,
                size: 30.0,
              ),
              label: Text('Student Attendance', style: TextStyle(fontSize: 22),
             
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Color.fromARGB(255, 210, 194, 50)),
              
              onPressed: () {
              },
              icon: const FaIcon(FontAwesomeIcons.person,
                size: 30.0,
              ),
              label: Text('Student list', style: TextStyle(fontSize: 22)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(fixedSize: const Size(360, 70),
              backgroundColor: Color.fromARGB(255, 210, 194, 50)),
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
              backgroundColor: Color.fromARGB(255, 210, 194, 50)),
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

AppBar buildAppBar() {
  return 
      AppBar(
         toolbarHeight: 80,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        
       title: const Text('Home',   
       style: TextStyle(color: Colors.white, fontSize: 22)),
       leading: IconButton(
    onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => const Home2(                
                        )));},
    icon: const FaIcon(FontAwesomeIcons.house),
  ),
         backgroundColor: Color.fromARGB(255, 172, 157, 19),
          actions: <Widget>[
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.rightFromBracket),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyLogin()));
                // login screen
              },
            ),
          ]
  );
}
}

