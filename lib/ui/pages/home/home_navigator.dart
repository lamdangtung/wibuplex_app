import 'package:flutter/cupertino.dart';
import 'package:wibuplex_app/common/app_navigator.dart';
import 'package:wibuplex_app/router/route_config.dart';
import 'package:go_router/go_router.dart';

class HomeNavigator extends AppNavigator {
  HomeNavigator({required BuildContext context}) : super(context: context);

  void openProfile() {
    GoRouter.of(context).pushNamed(AppRouter.profile);
  }
}
