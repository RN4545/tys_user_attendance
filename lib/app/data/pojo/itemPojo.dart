import 'package:flutter/material.dart';

class ItemPojo {
  String? introPhoto;
  String? title;
  String? subTitle;
  String? imageString;
  IconData? iconData;
  Color? color;
  int? count;

  ItemPojo(
      {this.introPhoto,
        this.title,
        this.subTitle,
        this.imageString,
        this.iconData,
        this.color,
        this.count});
}
