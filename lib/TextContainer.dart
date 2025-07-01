import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.text,this.colour,this.fsize, {super.key});
  final String text;
  final Color colour;
  final double fsize;
  @override
  Widget build(context) {
    return  Text(text,
      style: TextStyle(
          color: colour,
          fontSize: fsize
      ),
    );
  }}