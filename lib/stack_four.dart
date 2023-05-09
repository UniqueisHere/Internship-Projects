import 'package:flutter/material.dart';

class fourr extends StatelessWidget {
  const fourr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: Container(
            height: 200,
            width: 350,
            color: Colors.red,
            child: Row(
              children: [
                images(imageLocation: 'images/unique.jpg'),
                const SizedBox(
                  width: 5,
                ),
                images(imageLocation: 'images/unique.jpg'),
                const SizedBox(
                  width: 5,
                ),
                images(imageLocation: 'images/unique.jpg'),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget images({required String imageLocation}) {
    return Image.asset(
      imageLocation,
      width: 100,
      height: 100,
    );
  }
}