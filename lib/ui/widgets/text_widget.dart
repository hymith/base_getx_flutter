import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight? fontWeight;
  Color? color;
  dynamic maxLines;
  TextWidget({super.key, required this.text, required this.fontSize, this.fontWeight = FontWeight.bold, this.color = Colors.black, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color, overflow: TextOverflow.fade, fontFamily: "Roboto"),
    softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
