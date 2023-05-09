import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            SlideAble(),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.greenAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Notes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_task_rounded), label: "To do's")
        ],
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(color: Colors.greenAccent),
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Colors.greenAccent,
            spreadRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),
    );
  }
}

class SlideAble extends StatefulWidget {
  const SlideAble({Key? key}) : super(key: key);

  @override
  State<SlideAble> createState() => _SlideAbleState();
}

class _SlideAbleState extends State<SlideAble> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Slidable(
        key: const ValueKey(0),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          // dismissible: Dismissi blePane(onDismissed: () {}),
          children: [
            Container(
              height: 250,
              width: 75,
              color: Colors.black26,
            ),
            Container(
              height: 250,
              width: 75,
              color: Colors.black26,
            ),
          ],
        ),
        child: Container(
          width: 300,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
