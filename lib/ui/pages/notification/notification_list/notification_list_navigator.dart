import 'package:flutter/cupertino.dart';
import 'package:wibuplex_app/common/app_navigator.dart';
import 'package:wibuplex_app/router/route_config.dart';
import 'package:go_router/go_router.dart';

class NotificationListNavigator extends AppNavigator {
  NotificationListNavigator({required BuildContext context})
      : super(context: context);

  void openNotificationDetail() {
    GoRouter.of(context).pushNamed(AppRouter.notificationDetail);
  }
}
