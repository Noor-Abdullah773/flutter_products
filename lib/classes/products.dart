import 'package:flutter/material.dart';
class Product{
  late String title;
  late String subTitle;
  late double oldPrice;
  late double newPrice;
  late String images;
  late Color color1;
  late Color color2;
  late Color color3;
  Product({required this.title,required this.subTitle,required this.newPrice,required this.oldPrice,required this.images,
  required this.color1,required this.color2,required this.color3});

}