import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/text/text_styles.dart';

class LongCtaText extends StatelessWidget {
  final String longText;
  final String ctaText;
  final VoidCallback onCtaTapped;

  const LongCtaText({
    Key? key,
    required this.longText,
    required this.ctaText,
    required this.onCtaTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: longText,
        style: TextStyles.bodyTextStyle,
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onCtaTapped,
            text: " $ctaText",
            style: TextStyles.buttonTextStyle
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
