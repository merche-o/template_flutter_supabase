// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';

mixin $SignupView on StatelessWidget {
  final TextEditingController first_nameController = TextEditingController();
  final TextEditingController last_nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode first_nameFocusNode = FocusNode();
  final FocusNode last_nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    first_nameController.addListener(() => _updateFormData(model));
    last_nameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            FirstNameValueKey: first_nameController.text,
            LastNameValueKey: last_nameController.text,
            EmailValueKey: emailController.text,
            PasswordValueKey: passwordController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    first_nameController.dispose();
    first_nameFocusNode.dispose();
    last_nameController.dispose();
    last_nameFocusNode.dispose();
    emailController.dispose();
    emailFocusNode.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get firstNameValue => this.formValueMap[FirstNameValueKey];
  String? get lastNameValue => this.formValueMap[LastNameValueKey];
  String? get emailValue => this.formValueMap[EmailValueKey];
  String? get passwordValue => this.formValueMap[PasswordValueKey];

  bool get hasFirstName => this.formValueMap.containsKey(FirstNameValueKey);
  bool get hasLastName => this.formValueMap.containsKey(LastNameValueKey);
  bool get hasEmail => this.formValueMap.containsKey(EmailValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
}

extension Methods on FormViewModel {}
