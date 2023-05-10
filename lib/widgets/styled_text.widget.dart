import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(
      {Key? key,
      required this.text,
      this.color = Colors.white,
      this.fontsize = 35.00})
      : super(key: key);

  final String text;
  final Color color;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    final Size dim = MediaQuery.of(context).size;
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontsize),
    );
  }
}
