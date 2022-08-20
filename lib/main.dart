import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'tickets',
      home: BottomBar(),
    );
  }
}

