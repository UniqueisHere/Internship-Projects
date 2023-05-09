import 'package:flutter/material.dart';

class Fivee extends StatelessWidget {
  const Fivee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(120, 122, 255, 10),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(14, 14, 14, 0.7),
          title: const Text('Login form Made by using Glass Morphism'),
        ),
        body: const BigRectangle(
          
        ),
    );
  }
}

class CircularWidget extends StatelessWidget {
  const CircularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}

class BigRectangle extends StatelessWidget {
  const BigRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 450,
        width: 300,
        decoration:
            BoxDecoration(color: Colors.white.withOpacity(0.3), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(10, 10),
          )
        ]),
      ),
    );
  }
}
