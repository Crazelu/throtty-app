import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';

const _radius = 5;

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController? controller;
  final bool obscureText;
  final Color? textColor;
  final Color? fillColor;
  final Color? hintColor;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final bool readOnly;
  final String? Function(String?)? validator;
  final Color? borderColor;

  const CustomTextField({
    Key? key,
    this.label = "",
    this.hint = "",
    this.obscureText = false,
    this.readOnly = false,
    this.controller,
    this.textColor,
    this.fillColor,
    this.hintColor,
    this.suffix,
    this.prefix,
    this.keyboardType,
    this.validator,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty) ...{
          CustomText.h3(text: label),
          Gap(10.h),
        },
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          readOnly: readOnly,
          validator: validator,
          style: TextStyle(
            fontSize: 14.sp,
            color:
                textColor ?? Theme.of(context).primaryColorDark.withOpacity(.7),
          ),
          decoration: InputDecoration(
            hintText: hint,
            fillColor: fillColor,
            hintStyle: TextStyle(
              color: hintColor,
            ),
            prefixIcon: prefix,
            suffixIcon: suffix,
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(_radius.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(_radius.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
                color: borderColor ?? Theme.of(context).primaryColorDark,
              ),
              borderRadius: BorderRadius.circular(_radius.w),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
                color: Theme.of(context).errorColor,
              ),
              borderRadius: BorderRadius.circular(_radius.w),
            ),
          ),
        ),
      ],
    );
  }
}
