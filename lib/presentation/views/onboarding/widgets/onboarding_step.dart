import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/views/onboarding/onboarding_view_model.dart';
import 'package:throtty/presentation/views/onboarding/widgets/indicator.dart';

class OnboardingStep extends StatelessWidget {
  final int index;
  final String title;
  final String description;
  final PageController controller;

  const OnboardingStep({
    Key? key,
    required this.controller,
    this.index = 0,
    this.title = "Lorem ipsum dolor",
    this.description = "Lorem ipsum dolor sit ametLorem ipsum dolor",
  }) : super(key: key);

  void goTo(int page) {
    controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 450),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 404.h,
      width: 350.w,
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 35.w,
        vertical: 24.h,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20.w),
      ),
      child: Column(
        children: [
          const Spacer(),
          CustomText.h1(
            text: title,
          ),
          Gap(16.h),
          SizedBox(
            width: 178.w,
            child: CustomText.h3(
              text: description,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          ViewModelWrapper<OnboardingViewModel>(
            provider: onboardingViewModelProvider,
            builder: (_, __, viewModel) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        viewModel.completeOnboarding();
                      } else {
                        goTo(0);
                      }
                    },
                    child: CustomText.h3(
                      text: index == 0 ? "Skip" : "Back",
                    ),
                  ),
                  const Spacer(),
                  Indicator(
                    index: index,
                    onTap: () {
                      if (index == 0) {
                        goTo(1);
                      } else {
                        viewModel.completeOnboarding();
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
