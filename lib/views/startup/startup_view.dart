import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/views/startup/startup_viewmodel.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {
  @override
  Future<void> onViewModelReady(viewModel) async {
    super.onViewModelReady(viewModel);

    await viewModel.runStartupLogic();
  }

  @override
  Widget builder(
      BuildContext context, StartupViewModel viewModel, Widget? child) {
    // TODO: implement builder
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('Startup View'),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) {
    // TODO: implement viewModelBuilder
    return StartupViewModel();
    // throw UnimplementedError();
  }
}
