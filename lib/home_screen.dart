import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterFirebase/auth_services.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseUser user;

  HomeScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(user.uid),
            RaisedButton(
              child: Text("Logout"),
              onPressed: () async {
                await AuthServices.signOut();
              },
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
