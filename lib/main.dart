import 'package:flutter/material.dart';
import 'package:flutter_application_2/range_selector_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Randomizer',
      home: RangeSelectorPage(),
    );
  }
}

