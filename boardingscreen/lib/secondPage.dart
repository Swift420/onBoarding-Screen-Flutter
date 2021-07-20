import 'package:flutter/material.dart';

class SecondPageRoute extends StatefulWidget {
  const SecondPageRoute({Key? key}) : super(key: key);

  @override
  _SecondPageRouteState createState() => _SecondPageRouteState();
}

class _SecondPageRouteState extends State<SecondPageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is the second page"),
      ),
    );
  }
}
