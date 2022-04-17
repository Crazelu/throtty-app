import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      builder: (size) {
        return SizedBox(
          height: size.height,
          width: size.width,
          child: ListView(
            padding: EdgeInsets.only(top: kToolbarHeight + 20.h),
            children: [
              Center(
                child: CustomText.h2(
                  text: "Create Account",
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Gap(40.h),
              CustomText.h2(
                text: "Welcome,",
                color: Theme.of(context).primaryColorDark,
              ),
              Gap(8.h),
            ],
          ),
        );
      },
    );
  }
}
