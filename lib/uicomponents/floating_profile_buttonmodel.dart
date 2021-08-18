import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/config/initSupabase.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'package:template_flutter_supabase/services/localStorageService.dart';

class FloatingProfileButtonModel extends BaseViewModel {
  var _logger = Logger();
  final _authService = locator<AuthenticationService>();
  final _navService = locator<NavigationService>();
  final _localStoreService = locator<LocalStorageService>();

  ImageProvider? _image = AssetImage('assets/images/noavatar.jpeg');
  ImageProvider? get image => _image;

  FloatingProfileButtonModel() {
    returnProfileImage();
  }

  Future<bool> returnProfileImage() async {
    String? imageUrl = _authService.user?.avatar_url;
    if (imageUrl == null) {
      _image = AssetImage('assets/images/avatar.jpeg');
    } else {
      _image = await _localStoreService.getImage("avatar");
      if (_image == null) {
        final response =
            await supabase.storage.from('avatars').download(imageUrl);
        if (response.data != null) {
          _image = MemoryImage(response.data!);
          await _localStoreService.saveImage("avatar", response.data!);
        } else {
          _image = AssetImage('assets/images/avatar.jpeg');
        }
      }
    }
    notifyListeners();

    return true;
  }

  void moveToProfile() {
    _navService.navigateTo(Routes.profileView);
  }
}
