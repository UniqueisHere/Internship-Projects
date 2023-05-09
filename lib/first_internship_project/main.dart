import 'package:flutter/material.dart';
import 'package:flutter_basic/first_internship_project/login_page.dart';
import 'package:flutter_basic/first_internship_project/register_page.dart';
import 'package:flutter_basic/first_internship_project/text_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLogin(),
    );
  }
}
