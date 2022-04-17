import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:throtty/presentation/view-models/base_view_model.dart';

class ViewModelWrapper<T extends BaseViewModel> extends StatelessWidget {
  final ProviderBase<T> provider;
  final Widget Function(BuildContext context, T viewModelRx, T viewModel)
      builder;

  const ViewModelWrapper({
    Key? key,
    required this.provider,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return this.builder(
        context,
        ref.watch(provider),
        ref.read(provider),
      );
    });
  }
}
