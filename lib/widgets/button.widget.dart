import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key,
      required this.width,
      required this.height,
      required this.func,
      required this.color,
      required this.child,
      this.radius = 10})
      : super(key: key);
  //size
  final double width;
  final double height;
  //decoration
  final Color color;
  final double radius;

  final VoidCallback func;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size dim = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: func,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
