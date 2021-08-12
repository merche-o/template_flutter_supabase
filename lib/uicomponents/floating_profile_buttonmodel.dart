import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/config/initSupabase.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';

class FloatingProfileButtonModel extends BaseViewModel {
  var _logger = Logger();
  final _authService = locator<AuthenticationService>();
  final _navService = locator<NavigationService>();
  ImageProvider _image = AssetImage('assets/images/noavatar.jpeg');
  ImageProvider get image => _image;

  FloatingProfileButtonModel() {
    returnImage();
  }

  Future<bool> returnImage() async {
    String? imageUrl = _authService.user?.avatar_url;
    if (imageUrl == null) {
      _image = AssetImage('assets/images/noavatar.jpeg');
      notifyListeners();
    } else {
      final response =
          await supabase.storage.from('avatars').download(imageUrl);
      if (response.data != null) {
        _image = MemoryImage(response.data!);
        _image.toString();

        notifyListeners();
      } else {
        _image = AssetImage('assets/images/noavatar.jpeg');
        notifyListeners();
      }
    }
    return true;
  }

  void moveToProfile() {
    // _navService.clearStackAndShow(Routes.profileView);
  }
}
