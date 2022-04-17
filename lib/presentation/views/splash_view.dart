import 'package:flutter/material.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/utils/app_assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      builder: (size) {
        return SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  AppAssets.splashLogo,
                  height: 35.h,
                  width: 138.w,
                ),
              ),
              const Spacer(),
              CustomText.button(
                text: "Custom link creator",
                color: Theme.of(context).primaryColor,
              ),
              Gap(28.h),
            ],
          ),
        );
      },
    );
  }
}
