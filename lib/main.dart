import 'package:flutter/material.dart';
import 'package:new_test/module/home/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Image Picker Demo',
      home: HomePage(),
    );
  }
}
