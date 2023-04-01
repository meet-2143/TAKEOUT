// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import, unnecessary_null_comparison

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/home/main food page.dart';
//import 'package:library_assistant_2/first.dart';
//import 'package:library_assistant_2/profile.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // String? emailAddress;
  // String? password;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _cidController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      // backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image38.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.45,
            right: 35,
            left: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                children: [
                  Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _cidController,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Ngo Id',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Mobile Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          hintText: 'Enter Your E-mail',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          hintText: 'Enter New Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          ' ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black87,
                            child: IconButton(
                                onPressed: () {
                                  print('doneeeeeee');
                                  // signUp();
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>MainFoodPage()));
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => profile(
                                  //           phoneController:
                                  //               _phoneController.text,
                                  //           nameController:
                                  //               _nameController.text,
                                  //           emailController:
                                  //               _emailController.text,
                                  //           cidController: _cidController.text,
                                  //           passwordController:
                                  //               _passwordController.text,
                                  //         )));
                                },
                                icon: Icon(Icons.arrow_forward))),
                      ],
                    )
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

// final FirebaseAuth _auth = FirebaseAuth.instance;
// get user => _auth.currentUser;

// //SIGN UP METHOD
// Future signUp() async {
//   try {
//     await _auth.createUserWithEmailAndPassword(
//       email: _emailController.text,
//       password: _passwordController.text,
//     );
//     return null;
//   } on FirebaseAuthException catch (e) {
//     return "Error is : ${e.message}";
//   }
// }

// //SIGN IN METHOD
// Future signIn() async {
//   try {
//     await _auth.signInWithEmailAndPassword(
//         email: _emailController.text, password: _passwordController.text);
//     return null;
//   } on FirebaseAuthException catch (e) {
//     return e.message;
//   }
// }

// //SIGN OUT METHOD
// Future signOut() async {
//   await _auth.signOut();

//   print('signout');
// }
}