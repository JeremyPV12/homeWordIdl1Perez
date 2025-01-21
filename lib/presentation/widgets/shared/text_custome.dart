import 'package:flutter/material.dart';

/* class TextCustome extends StatelessWidget {

  final String text;
  final Color colors ;
  final double fontSize;
  final FontWeight fontWeight;

  const TextCustome({super.key, required this.colors, required this.fontSize, required this.fontWeight, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),
    );
  }
} */

TextStyle textCustom(
  {Color colors = Colors.black ,
  double fontSize = 10 ,
  FontWeight fontWeight = FontWeight.normal }
) {
  return TextStyle(
    color: colors,
    fontSize: fontSize,
    fontWeight: fontWeight,
  ) ;
}