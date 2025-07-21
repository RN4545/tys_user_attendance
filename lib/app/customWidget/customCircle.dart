import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  final Color? circleColor;
  final double size;
  final String? text;
  final TextStyle? textStyle;
  final ImageProvider? image;
  final Gradient? gradient;

  const CustomCircle({
    Key? key,
    this.circleColor,
    required this.image,
    required this.text,
    this.size = 100.0,
    this.textStyle,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: gradient == null ? circleColor : null,
        gradient: gradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: size * 0.05),
            child: image != null
                ? Image(
              image: image!,
              width: size * 0.5,
              height: size * 0.5,
            )
                : SizedBox(
              width: size * 0.5,
              height: size * 0.5,
            ),
          ),
          // Text below image
          Text(
            text ?? "",
            style: textStyle ??
                const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
