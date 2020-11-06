import 'package:flutter/material.dart';

import 'config/themes.dart';
import './screens/login_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flirt',
      home: _HomePageState(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
      theme: defaultTheme,
    );
  }
}

class _HomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: LoginScreen(),
    );
  }
}
