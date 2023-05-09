import 'package:flutter/material.dart';
import 'package:flutter_basic/3rd.dart';
import 'package:flutter_basic/form.dart';
import 'package:flutter_basic/glass_morphism.dart';
import 'package:flutter_basic/hardest.dart';
import 'package:flutter_basic/newform.dart';
import 'package:flutter_basic/niraj_todo.dart';
import 'package:flutter_basic/slideable.dart';
import 'package:flutter_basic/stack_five.dart';
import 'package:flutter_basic/stack_one.dart';
import 'package:flutter_basic/stack_three.dart';
import 'package:flutter_basic/stack_two.dart';
import 'package:flutter_basic/stack_three.dart';
import 'package:flutter_basic/stack_five.dart';
import 'package:flutter_basic/glass_morphism.dart';
import 'package:flutter_basic/to_do.dart';
import 'package:flutter_basic/slideable.dart';
import 'package:flutter_basic/gradient_mixer/login.dart';
import 'package:flutter_basic/music_ui/neu_box.dart';
import 'package:flutter_basic/music_ui/song_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SongPage(),
    );
  }
}