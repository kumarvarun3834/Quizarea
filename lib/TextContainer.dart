import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.text,this.colour,this.f, {super.key});
  final String text;
  final Color colour;
  final double f;
  @override
  Widget build(context) {
    return  Text(text,
      style: TextStyle(
          color: colour,
          fontSize: f,
        // letterSpacing: 3,
      )
    );
  }}