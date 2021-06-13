import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext cxt) {
    return InkWell(
      child: Container(
        color: Colors.amber,
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
      onTap: () {
        (selectHandler());
      },
    );
  }
}
