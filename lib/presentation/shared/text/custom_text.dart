import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/text/text_styles.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;

  const CustomText({
    Key? key,
    required this.text,
    this.overflow,
    this.style,
    this.textAlign,
    this.maxLines,
    this.color,
  }) : super(key: key);

  factory CustomText.button({
    required String text,
    Color? color,
  }) {
    return CustomText(
      text: text,
      color: color,
      style: TextStyles.buttonTextStyle,
    );
  }

  factory CustomText.h1({
    required String text,
    Color? color,
  }) {
    return CustomText(
      text: text,
      color: color,
      style: TextStyles.h1TextStyle,
    );
  }

  factory CustomText.h2({
    required String text,
    Color? color,
  }) {
    return CustomText(
      text: text,
      color: color,
      style: TextStyles.h2TextStyle,
    );
  }

  factory CustomText.h3({
    required String text,
    Color? color,
    TextAlign? textAlign,
  }) {
    return CustomText(
      text: text,
      color: color,
      textAlign: textAlign,
      style: TextStyles.h3TextStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: style?.copyWith(color: color),
    );
  }
}
