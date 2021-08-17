import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:supabase/supabase.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/config/initSupabase.dart';
import 'package:template_flutter_supabase/model/user/user.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'package:template_flutter_supabase/services/localStorageService.dart';
import 'package:template_flutter_supabase/services/userService.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';

//TODO : fix duplication of images on supabase when uploading profile picture

class ProfileViewModel extends BaseViewModel {
  final _picker = ImagePicker();

  String _title = 'Profile';
  String get title => _title;
  bool _status = true;
  bool get status => _status;
  final _localStoreService = locator<LocalStorageService>();
  final _authService = locator<AuthenticationService>();
  final _userSerivce = locator<UserService>();
  final _logger = Logger();
  AppUser? get user => _authService.user;
  AppUser? _copyUser = null;

  ImageProvider? _image = AssetImage('assets/images/noavatar.jpeg');
  ImageProvider? get image => _image;
  ProfileViewModel() {
    _copyUser = _authService.user;
    returnImage();
  }

  void editModeOn() {
    _status = false;
    notifyListeners();
  }

  void editModeOff() {
    _status = true;
    notifyListeners();
  }

  void setNewValue(String key, String value) {
    var tmp = _copyUser!.toJson();
    tmp[key] = value;
    _copyUser = AppUser.fromJson(tmp);
  }

  void updateUser() async {
    await _userSerivce.update(id: user!.id, json: _copyUser!.toJson());
    await _authService.fetchUser(id: user!.id);

    notifyListeners();
  }

  void editAvatar() async {
    try {
      final pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        maxHeight: 600,
        maxWidth: 600,
      );
      if (pickedFile == null) {
        return;
      }

      final size = await pickedFile.length();
      if (size > 1000000) {
        throw "The file is too large. Allowed maximum size is 1 MB.";
      }
      final bytes = await pickedFile.readAsBytes();
      final fileName = '${randomString(15)}.jpg';
      _logger.i(fileName);
      const fileOptions = FileOptions(upsert: true);
      final uploadRes = await supabase.storage
          .from('avatars')
          .uploadBinary(fileName, bytes, fileOptions: fileOptions);

      if (uploadRes.error != null) {
        throw uploadRes.error!.message;
      }
      await _userSerivce.update(id: user!.id, json: {"avatar_url": fileName});
      await _localStoreService.saveImage("avatar", bytes);
      await _authService.fetchUser(id: user!.id);
      returnImage();
      notifyListeners();
    } catch (e) {
      _logger.e(e.toString());
    }
  }

  Future<bool> returnImage() async {
    String? imageUrl = _authService.user?.avatar_url;
    if (imageUrl == null) {
      _image = AssetImage('assets/images/noavatar.jpeg');
    } else {
      _image = await _localStoreService.getImage("avatar");
      if (_image == null) {
        final response =
            await supabase.storage.from('avatars').download(imageUrl);
        if (response.data != null) {
          _image = MemoryImage(response.data!);
          await _localStoreService.saveImage("avatar", response.data!);
        } else {
          _image = AssetImage('assets/images/noavatar.jpeg');
        }
      }
    }
    notifyListeners();

    return true;
  }
}
