import 'package:wibuplex_app/models/entities/notification/notification_entity.dart';
import 'package:wibuplex_app/models/response/array_response.dart';
import 'package:wibuplex_app/network/api_client.dart';

abstract class NotificationRepository {
  Future<ArrayResponse<NotificationEntity>> getNotifications({
    required int page,
  });

  Future<void> markAllAsRead();

  Future<void> markAsRead({required int notificationId});
}

class NotificationRepositoryImpl extends NotificationRepository {
  ApiClient apiClient;

  NotificationRepositoryImpl({required this.apiClient});

  @override
  Future<ArrayResponse<NotificationEntity>> getNotifications(
      {required int page}) async {
    return await apiClient.getNotifications(page);
  }

  @override
  Future<void> markAllAsRead() {
    return apiClient.markAllNotificationAsRead();
  }

  @override
  Future<void> markAsRead({required int notificationId}) {
    return apiClient.markNotificationAsRead();
  }
}
