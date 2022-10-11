import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var buttonText;
  final Function selectHandler;

  Answer(this.buttonText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        child: Text(buttonText),
        onPressed: selectHandler,
      ),
    );
  }
}
