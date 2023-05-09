import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlideAbleWidget extends StatelessWidget {
  const SlideAbleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 400,
        color: Colors.red,
        child: Slidable(
          key:  ValueKey(0),
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ],
          ),
          child: Container(
            width: 200,
            height: 50,
          ),
        ),
      ),
    );
  }
}
