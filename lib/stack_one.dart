import 'package:flutter/material.dart';
import 'package:flutter_basic/hardest.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 50),
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(70),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(11, 11),
                    color: Colors.grey,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Unique Guragain',
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    ),
                    const Text('Jounier Flutter Delevoper at Khatra Academy',
                        style: TextStyle(color: Colors.green, fontSize: 14)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Hello my name is Unique Guragain. Currently studying at IIC college. I have been programming flutter for past ten years and throught my journey I learned many new things and shortcuts tools in flutter. Frankly, i think dart is one of the most powerfull programming languagre to ever exit as it not only allows the program to run in Android and Ios but the recent update has made sure to make it usable in Desktop as well.',
                      textAlign: TextAlign.justify,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Hard();
                              },
                            ),
                          );
                        },
                        child: const Text('Hire Me'))
                  ],
                ),
              ),
            ),
            Positioned(
              top: -40,
              left: 100,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                      image: AssetImage("images/unique.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}