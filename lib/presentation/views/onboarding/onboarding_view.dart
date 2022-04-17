import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/views/onboarding/widgets/onboarding_step.dart';
import 'package:throtty/utils/app_assets.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      builder: (size) {
        return Container(
          padding: const EdgeInsets.only(top: kToolbarHeight),
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Image.asset(
                  AppAssets.appbarLogo,
                  height: 27.h,
                  width: 105.w,
                ),
              ),
              SizedBox(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppAssets.linkIllustration,
                      height: 510.h,
                      width: 510.w,
                      fit: BoxFit.fitWidth,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Positioned.fill(
                top: 400.h,
                child: PageView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    OnboardingStep(controller: controller),
                    OnboardingStep(controller: controller, index: 1),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
