import 'package:flutter/material.dart'
    show
        BuildContext,
        Container,
        EdgeInsets,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Widget;

class Question extends StatelessWidget {
  final String questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext cxt) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
