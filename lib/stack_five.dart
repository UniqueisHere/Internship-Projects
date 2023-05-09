import 'dart:ui';

import 'package:flutter/material.dart';

class fivee extends StatelessWidget {
  const fivee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: const Text('This is the fifth practise for Stack'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 280,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.09),
                    offset: const Offset(5, 5))
              ]),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1,
              sigmaY: 1,
            ),
            child: Container(
              color: Colors.white.withOpacity(0.3),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -10,
                    bottom: -30,
                    child: Rectangular_Container(),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -30,
                    child: Rectangular_Container(),
                  ),
                  Positioned(
                    left: -20,
                    top: -25,
                    child: Circular_Container(),
                  ),
                  Positioned(
                    right: -20,
                    top: -25,
                    child: Circular_Container(),
                  ),
                  Positioned(
                    left: 60,
                    top: -20,
                    child: oval(),
                  ),
                  Positioned(
                    left: 40,
                    top: 80,
                    child: textFiled(
                      iconn: Icons.contact_mail,
                      textfield: 'User Name',
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 150,
                    child: textFiled(
                      iconn: Icons.email,
                      textfield: 'Your Email',
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 220,
                    child: textFiled(
                      iconn: Icons.email,
                      textfield: 'Your Email',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textFiled({required IconData iconn, required String textfield}) {
    return Container(
      width: 200,
      height: 40,
      color: Colors.white.withOpacity(0.3),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1,
          sigmaY: 1,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.09),
                  offset: Offset(0, 3),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(iconn),
              // SizedBox(
              //   width: 20,
              // ),
              Text(
                textfield,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Circular_Container extends StatefulWidget {
  const Circular_Container({Key? key}) : super(key: key);

  @override
  _Circular_ContainerState createState() => _Circular_ContainerState();
}

class _Circular_ContainerState extends State<Circular_Container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 3,
              offset: Offset(5, 5))
        ],
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1,
          sigmaY: 1,
        ),
        child: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}

class Rectangular_Container extends StatefulWidget {
  const Rectangular_Container({Key? key}) : super(key: key);

  @override
  _Rectangular_ContainerState createState() => _Rectangular_ContainerState();
}

class _Rectangular_ContainerState extends State<Rectangular_Container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(color: Colors.white.withOpacity(0.3), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.09), offset: const Offset(5, 5)),
      ]),
    );
  }
}

class oval extends StatefulWidget {
  const oval({Key? key}) : super(key: key);

  @override
  _ovalState createState() => _ovalState();
}

class _ovalState extends State<oval> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 1,
        sigmaY: 1,
      ),
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 3,
              offset: Offset(5, 5),
            )
          ],
        ),
        child: Center(
          child: Text(
            'Welcome',
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}