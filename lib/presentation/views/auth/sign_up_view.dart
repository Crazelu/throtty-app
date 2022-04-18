import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/views/auth/widgets/long_cta_text.dart';
import 'package:throtty/presentation/views/auth/widgets/or_divider.dart';
import 'package:throtty/utils/app_assets.dart';
import 'package:throtty/utils/extensions.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                  Gap(5.h),
                  CustomText.body(
                    text: "Please fill in details to create a new account",
                    color: Theme.of(context).primaryColorDark.withOpacity(.7),
                  ),
                  Gap(50.h),
                  CustomTextField(
                    label: "Email",
                    hint: "Type your email",
                    fillColor: Theme.of(context).primaryColor.withOpacity(.05),
                    hintColor: Theme.of(context).primaryColor.withOpacity(.28),
                    borderColor: Theme.of(context).primaryColor,
                  ),
                  Gap(40.h),
                  CustomTextField(
                    label: "Password",
                    hint: "Create a new password",
                    fillColor: Theme.of(context).primaryColor.withOpacity(.05),
                    hintColor: Theme.of(context).primaryColor.withOpacity(.28),
                    borderColor: Theme.of(context).primaryColor,
                  ),
                  Gap(50.h),
                  Center(
                    child: CustomButton(
                      text: "Create a new account",
                      width: 195,
                      onPressed: () {},
                    ),
                  ),
                  Gap(40.h),
                  Center(
                    child: LongCtaText(
                      longText: "Already have an account?",
                      ctaText: "Login",
                      onCtaTapped: () {},
                    ),
                  ),
                ],
              ).horizontalPad,
              Gap(40.h),
              const OrDivider(),
              Gap(30.h),
              Column(
                children: [
                  CustomOutlinedButton(
                    width: 214,
                    text: "Sign up with Google",
                    color: Theme.of(context).primaryColorDark,
                    prefix: ImageIcon(
                      const AssetImage(AppAssets.googleIcon),
                      color: Theme.of(context).primaryColorDark,
                      size: 19.w,
                    ),
                    onPressed: () {},
                  ),
                ],
              ).horizontalPad,
            ],
          ),
        );
      },
    );
  }
}
