/// The above class is a stateless widget which is used to create a page.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class hawa extends StatelessWidget {
  const hawa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Designed by Unique Guragain'),
        backgroundColor: Color(100),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: 380,
          height: 350,
          child: Row(
            children: [
              Container(
                width: 190,
                height: 300,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text('Sub Section'),
                    SizedBox(height: 10,),
                    Text('Video Section'),
                    SizedBox(height: 10,),
                    Text('Hello my name is unique guragain. I am currently practising flutter for mobile development. Clickon the video to learn muy journey to fluttter master.'),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
              /// A container which is used to create a box.
              Container(
                width: 190,
                height: 300,
                padding: EdgeInsets.fromLTRB(20, 20, 100, 50),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/video.png'),
                  fit: BoxFit.cover)
                ),

              ),
            ],
          ),

        ),
    )
    );
  }
}



