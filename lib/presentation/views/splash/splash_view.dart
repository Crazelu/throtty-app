import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:throtty/presentation/shared/shared.dart';
import 'package:throtty/presentation/views/splash/splash_view_model.dart';
import 'package:throtty/utils/app_assets.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        ref.read(splashViewModelProvider).navigate();
      },
    );
  }

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
