import 'package:flutter/cupertino.dart';
import 'package:wibuplex_app/common/app_navigator.dart';
import 'package:wibuplex_app/router/route_config.dart';
import 'package:go_router/go_router.dart';

class OnboardingNavigator extends AppNavigator {
  OnboardingNavigator({required BuildContext context})
      : super(context: context);

  void openSignInPage() {
    GoRouter.of(context).pushReplacementNamed(AppRouter.signIn);
  }
}
