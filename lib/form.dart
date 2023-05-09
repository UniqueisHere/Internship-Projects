import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(5,5),
                blurRadius: 20
              )
            ]
          ),

          width: 330.0,
          height: 300.0,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(

                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://scontent.fktm1-2.fna.fbcdn.net/v/t1.6435-9/153363103_1073113706542703_8773422964715621600_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=qU58J6L-S8EAX95LIum&_nc_ht=scontent.fktm1-2.fna&oh=00_AT_FYboXwQO0-yk9qjaQVWzC7C4g2xJGws4ZYK_RxD3gCQ&oe=621747D3'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 150,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Hello my name si unique guragain. I am from nepal and currently styding a t iic college located in itahari.'),
                    Text(' Best Andrioid Developer You Can Afford', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://www.facebook.com/images/fb_icon_325x325.png'),
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10,),
                        Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/800px-Instagram_logo_2016.svg.png'),
                          width: 20,
                          height: 20,
                        ),
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}