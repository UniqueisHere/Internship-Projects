import 'package:flutter/material.dart';

class three_stack extends StatelessWidget {
  const three_stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 480,
          color: Colors.red,
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/offhub.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 120,
                bottom: 250,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/unique.jpg'),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 90,
                bottom: 230,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.green,
                  child: Column(
                    children: [
                      const Text(
                        'Unique Guragain',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 100,
                bottom: 210,
                child: Column(
                  children: [
                    const Text(
                      'UI/UX Developer',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 190,
                child: Text(
                  'Hello my name is Unique Guragain. A second year student at IIC(Itahari International College). I have been doing flutter for a week now and its so relaxing to practise.',
                  style: TextStyle(fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}