import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/style/dimensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? prefix;
  final double height;
  final double width;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.text = "",
    this.prefix,
    this.height = Dimensions.mobileButtonHeight,
    this.width = Dimensions.mobileButtonMinWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith(
          (states) => Size(width.w, height.h),
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
                  color: Theme.of(context).primaryColorLight,
                ),
              ],
            )
          : CustomText.button(
              text: text,
              color: Theme.of(context).primaryColorLight,
            ),
    );
  }
}
