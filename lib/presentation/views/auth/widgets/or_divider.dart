import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/style/palette.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 169.w,
          child: const Divider(
            color: Palette.hintColorLight,
            thickness: .35,
          ),
        ),
        Gap(15.w),
        CustomText.medium(
          text: "or",
          color: Theme.of(context).primaryColorDark,
        ),
        Gap(15.w),
        SizedBox(
          width: 169.w,
          child: const Divider(
            color: Palette.hintColorLight,
            thickness: .35,
          ),
        ),
      ],
    );
  }
}
