import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/style/dimensions.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? prefix;
  final double height;
  final double width;
  final Color? color;

  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    this.text = "",
    this.prefix,
    this.height = Dimensions.mobileButtonHeight,
    this.width = Dimensions.mobileOutlinedButtonMinWidth,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith(
          (states) => Size(width.w, height.h),
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => BorderSide(
            color: color ??
                Theme.of(context)
                    .outlinedButtonTheme
                    .style!
                    .side!
                    .resolve({MaterialState.selected})!.color,
          ),
        ),
      ),
      onPressed: onPressed,
      child: prefix != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prefix!,
                Gap(10.w),
                CustomText.button(
                  text: text,
                  color: color ?? Theme.of(context).primaryColor,
                ),
              ],
            )
          : CustomText.button(
              text: text,
              color: color ?? Theme.of(context).primaryColor,
            ),
    );
  }
}
