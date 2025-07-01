import 'package:flutter/material.dart';
class ImageContainer extends StatelessWidget {
  ImageContainer(this.img,{super.key});
  String img;
  @override
  Widget build(BuildContext context) {
    return Image.asset(img
    ,width: 300,height: 350,);
  }
}