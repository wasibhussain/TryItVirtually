import 'package:flutter/material.dart';
import 'package:tryvirtually/screens/signup.dart';

import '../main.dart';
import 'home_page.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    //  FirebaseAuth auth = FirebaseAuth.instance;

    final String email = emailController.text;
    final String password = passwordController.text;

    // await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  @override
  Widget build(BuildContext context) {
    var _passwordVisible = false;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Text(
                  "Try Virtually",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black, // add custom icons also
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(padding: EdgeInsets.only(top: 130)),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email", border: OutlineInputBorder()),
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            } else if (value.contains('@')) {
                              return 'Please Enter Valid Email';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                border: OutlineInputBorder()),
                            controller: passwordController,
                            obscureText: !_passwordVisible,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Password';
                              }

                              return null;
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: login,
                          child: Text("Log In"),
                        ),
                      ],
                    ),
                  ),
                ),
                // RaisedButton(onPressed: () {
                //   if (_formkey.currentState!.validate()) {
                //     setState(() {
                //       var email = emailController.text;
                //       var password = passwordController;
                //     });
                //   }
                //   Text("Sign Up");
                // }),

                Padding(
                    padding: EdgeInsets.only(
                  top: 5,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    InkWell(
                        child: new Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        }),
                  ],
                ),
              ]),
            )));
  }

  void setState(Null Function() param0) {}
}
