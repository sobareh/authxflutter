import 'package:flutter/material.dart';
import 'package:flutterFirebase/auth_services.dart';
import 'package:flutterFirebase/wrapper.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        // initialRoute: '/',
        // routes: {
        //   '/home': (context) => HomeScreen(),
        // },
        home: Wrapper(),
      ),
    );
  }
}
