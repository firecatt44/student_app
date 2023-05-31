// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class Profile extends StatefulWidget {
//   @override
//   _Profile createState() => _Profile();
// }

// class _Profile extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//     //   title: 'User Profile',
//     //   debugShowCheckedModeBanner: false,
//     //   theme: ThemeData(
//     //       primaryColor: Colors.black,
//     //       fontFamily: 'Roboto',
//     //       elevatedButtonTheme: ElevatedButtonThemeData(
//     //           style: ElevatedButton.styleFrom(
//     //               shadowColor: Colors.grey,
//     //               elevation: 20,
//     //               shape: RoundedRectangleBorder(
//     //                   borderRadius: BorderRadius.all(Radius.circular(0.0))))),
//     //       inputDecorationTheme: InputDecorationTheme(
//     //           border:
//     //               OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
//     //       textButtonTheme: TextButtonThemeData(
//     //         style: TextButton.styleFrom(
//     //           alignment: Alignment.centerLeft,
//     //           foregroundColor: Colors.black,
//     //         ),
//     //       )),
//       appBar: buildAppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: ListView(
//         children: <Widget>[ 
//           ImageIcon(
//      AssetImage('assets/images/person.png'),
//      color: Colors.blueGrey,
//      size: 250,
// ),
// SizedBox(height: 10),
// Text("Student Name",textAlign: TextAlign.center, 
// style: TextStyle(
// color: Colors.black, fontSize: 33, fontWeight: FontWeight.bold,
// ),),
//        Row( children:[
//         Text('Name'),
//         TextField(
//   decoration: InputDecoration(
//     border: OutlineInputBorder(),
   
//   ),
// ),
//           ]  ), 

//         ],
//         ),
//       ),
//     );
    
//   }
//     AppBar buildAppBar() {
//     return AppBar(
//       title: const Text('My Child'),
//       elevation: 0,
//       backgroundColor: Color.fromARGB(255, 46, 54, 97),
//       actions: const <Widget>[],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
        body: Center(
          child: Profile(    
            imageUrl: "https://th.bing.com/th/id/OIP.glYhd5ouNMxbAtiQ5quTEQHaHa?pid=ImgDet&rs=1",
            name: "Shamim Miah",
            website: "shamimmiah.com",
            designation: "Project Manager | Flutter & Blockchain Developer",
            email: "cse.shamimosmanpailot@gmail.com",
            phone_number: "01757736053",
          ),
        ));
  }
   AppBar buildAppBar() {
    return AppBar(
      title: const Text('My Child'),
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 46, 54, 97),
      actions: const <Widget>[],
    );
  } 
}