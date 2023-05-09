import 'package:flutter/material.dart';

class two_stack extends StatelessWidget {
  const two_stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the second practise for Stack'),
        centerTitle: true,
        shadowColor: Colors.blueGrey,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 250,
              width: 350,
              padding: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20,
                    )
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: [
                      const Text(
                        'Hello my name is Unique Guragain. A second year student at itahari international college. snfnsfibfbbf hbebffbbfbf febfebfbfbwefbwf ewfiefbieubfuibf ffbiwfbwff bfifbfef ffh gerf8aehfrhf fg aefgfgagrff erger fger fge rgf  rfagfag fgrrf gg fga fgg',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 130,
              bottom: -40,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/unique.jpg'),
                radius: 50,
              ),
            ),
            Positioned(left: 130, bottom: -60, child: Text('Unique Guragain')),
            Positioned(left: 130, bottom: -80, child: Text('UI/UX Developer'))
          ],
        ),
      ),
    );
  }
}