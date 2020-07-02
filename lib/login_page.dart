import 'package:flutter/material.dart';
import 'package:flutterFirebase/auth_services.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEE58),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 75,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/firebase.png'),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 100.0,
                  width: 350,
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 20),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.grey,
                      ),
                      hintText: "Enter City Name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                    controller: emailController,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 100.0,
                  width: 350,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.grey,
                      ),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                    controller: passwordController,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: RaisedButton(
                    onPressed: () async {
                      await AuthServices.signIn(
                          emailController.text, passwordController.text);
                    },
                    child: Text('Log In'),
                    color: Colors.grey[200],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: RaisedButton(
                    onPressed: () async {
                      await AuthServices.signInAnonymous();
                    },
                    child: Text('Sign In Anonymous'),
                    color: Colors.grey[200],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
