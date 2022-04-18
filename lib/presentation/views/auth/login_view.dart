import 'package:flutter/material.dart';
import 'package:throtty/presentation/routes/routes.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/views/auth/widgets/long_cta_text.dart';
import 'package:throtty/presentation/views/auth/widgets/or_divider.dart';
import 'package:throtty/utils/app_assets.dart';
import 'package:throtty/utils/extensions.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
                      text: "Login",
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Gap(40.h),
                  CustomText.h2(
                    text: "Welcome,",
                  ),
                  Gap(5.h),
                  CustomText.body(
                    text: "Please fill in details to login to your account",
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
                    hint: "Enter password",
                    fillColor: Theme.of(context).primaryColor.withOpacity(.05),
                    hintColor: Theme.of(context).primaryColor.withOpacity(.28),
                    borderColor: Theme.of(context).primaryColor,
                  ),
                  Gap(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CustomText.body(text: "Forgot password"),
                      ),
                    ],
                  ),
                  Gap(50.h),
                  Center(
                    child: CustomButton(
                      text: "Login to account",
                      width: 195,
                      onPressed: () {},
                    ),
                  ),
                  Gap(40.h),
                  Center(
                    child: LongCtaText(
                      longText: "Are you a new user?",
                      ctaText: "Create account",
                      onCtaTapped: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Routes.signupViewRoute);
                      },
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
                    text: "Login with Google",
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
