import 'package:google_sign_in/google_sign_in.dart';
import 'package:student_app/data.dart';
import 'package:student_app/logincontroller.dart';
import 'homeparent.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);
 
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final controller = Get.put (LoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/loginteacher.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(top: 80),
            child: Image.asset(
              'assets/images/logo_schoolscan.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 250, left: 90),
            child: const Text(
              "Welcome Back",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 33, fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 290, left: 50),
            child: const Text(
              "Log in to your account to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 120, 117, 117),
                fontSize: 20,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.5),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // HeaderWithSearchBox;
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 70, 78, 101),
                      child: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          color: Colors.white,
                    // onPressed: () {
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home2()));
                    // },
                   onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(title: 'homepage',)));}
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child:FloatingActionButton.extended(
            onPressed: () {
              GoogleSignIn().signIn();
            },
          icon: Image.asset(
            'assets/images/google.png',
            height: 32,
            width: 32,
          ),
          label: Text('Sign in with Google'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black, )
                ),
              ]),      
            ),
          ),
          // Container(
          //   child:FloatingActionButton.extended(
          //   onPressed: () {},
          // icon: Image.asset(
          //   'assets/images/google.png',
          //   height: 32,
          //   width: 32,
          // ),
          // label: Text('Sign in with Google'),
          // backgroundColor: Colors.white,
          // foregroundColor: Colors.black, )
          // ),    
        ]),
      ),
    );
  }
}
