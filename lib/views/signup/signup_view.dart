import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked_annotations.dart';

import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/uicomponents/app_button.dart';
import 'package:template_flutter_supabase/uicomponents/app_error_text.dart';
import 'package:template_flutter_supabase/uicomponents/app_text_button.dart';
import 'package:template_flutter_supabase/uicomponents/app_text_form_field.dart';
import 'package:template_flutter_supabase/views/signup/signup_viewmodel.dart';
import 'signup_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'first_name'),
  FormTextField(name: 'last_name'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password', isPassword: true),
])
class SignupView extends ViewModelBuilderWidget<SignupViewModel>
    with $SignupView {
  SignupView({Key? key}) : super(key: key);
  final _logger = Logger();

  @override
  void onViewModelReady(SignupViewModel viewModel) {
    super.onViewModelReady(viewModel);
    listenToFormUpdated(viewModel);
  }

  @override
  Widget builder(
      BuildContext context, SignupViewModel viewModel, Widget? child) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.85,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  AppTextFormField(
                    labelText: 'First Name',
                    controller: first_nameController,
                    focusNode: first_nameFocusNode,
                    helperText: 'Required',
                  ),
                  AppTextFormField(
                    labelText: 'Last Name',
                    controller: last_nameController,
                    focusNode: last_nameFocusNode,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 10),
                  AppTextFormField(
                    labelText: 'Email',
                    controller: emailController,
                    focusNode: emailFocusNode,
                    keyboardType: TextInputType.emailAddress,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 10),
                  AppTextFormField(
                    labelText: 'Password',
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 30),
                  AppButton(
                    label: 'Create Account',
                    loading: viewModel.isBusy,
                    onPressed: () {
                      viewModel.signUp();
                    },
                  ),
                  SizedBox(height: 5),
                  AppErrorText(text: viewModel.modelError),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      SizedBox(width: 5),
                      AppTextButton(
                        label: 'Sign In',
                        onTap: viewModel.toSignInView,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(BuildContext context) {
    // TODO: implement viewModelBuilder
    return SignupViewModel();
  }
}
