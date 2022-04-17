import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:throtty/presentation/views/onboarding/step_arc.dart';

class Indicator extends StatelessWidget {
  final int index;
  final VoidCallback onTap;

  const Indicator({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 74.w,
        maxHeight: 54.h,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5.w,
            bottom: 9.h,
            child: StepArc(index: index),
          ),
          Positioned(
            left: 6.w,
            bottom: 1.h,
            child: GestureDetector(
              onTap: onTap,
              behavior: HitTestBehavior.translucent,
              child: Container(
                height: 52.h,
                width: 52.w,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward,
                  size: 32.w,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
