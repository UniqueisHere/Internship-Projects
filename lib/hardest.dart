import 'package:flutter/material.dart';

class Hard extends StatelessWidget {
  const Hard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'All in one',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 20, blurRadius: 20)
          ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/cisco.png'))),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 10, 10, 20),
                child: Row(
                  children: [
                    Text(
                      "'",
                      style:
                          TextStyle(color: Colors.yellowAccent, fontSize: 22),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                      width: 300,
                      height: 100,
                      child: Text(
                        'Yawning gap between theory and practise in the educational space, Edurica is brinding the gap with its unique learning methodology..',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/unique.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: Text(
                          'Unique Guragain Brilliant person with great mind.'),
                    ),
                  ])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}