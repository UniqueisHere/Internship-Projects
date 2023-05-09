import 'package:flutter/material.dart';

class nowform extends StatelessWidget {
  const nowform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(

          width: 300,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent,
                blurRadius: 5,
                spreadRadius: 5,
                offset: Offset(5,5)
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/img.png')),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                  child: Text(
                    'I have been seaching for a good free plugin for a really long time. This is definitely the one! For a free plugin it does a lot of things.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, height: 1.3, wordSpacing: 1.3),
                  )),
              SizedBox(
                width: 10,
                height: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/unique.jpg'),
                radius: 40,
              ),
              SizedBox( height: 10,),
              Text('Unique Guragain', style: TextStyle(color: Colors.red, fontSize: 20, ),),
              SizedBox(height: 5,),
              Text('Android developer', style: TextStyle(color: Colors.blueAccent, fontSize: 17),)
            ],
          ),
        ),
      ),
    );
  }
}