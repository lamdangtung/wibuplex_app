import 'package:flutter/cupertino.dart';
import 'package:wibuplex_app/common/app_navigator.dart';

class UpdateProfileNavigator extends AppNavigator {
  UpdateProfileNavigator({required BuildContext context})
      : super(context: context);

  void backProfile() {
    Navigator.of(context).pop();
  }
}
