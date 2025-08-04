import 'package:flutter/material.dart';

class CustomContainerBox extends StatelessWidget {
  final Color? containerColor;
  final double? heightContainer;
  final double? widthContainer;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;

  const CustomContainerBox({super.key,
    this.containerColor,
    this.borderRadius,
    this.heightContainer,
    this.widthContainer,
    this.borderColor,
    this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:heightContainer ?? 50.0,
      width: widthContainer ?? 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: containerColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        border: Border.all(
          color: borderColor ?? Colors.white,
          width: borderWidth ?? 1.0,
        ),
      ),
      child: const Center(
        child: Icon(Icons.add),
      ),
    );
  }
}
