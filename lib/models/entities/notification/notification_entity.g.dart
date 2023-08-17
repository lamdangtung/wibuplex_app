// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) =>
    NotificationEntity(
      id: json['id'] as int? ?? 0,
      isRead: json['isRead'] as bool? ?? false,
      title: json['title'] as String?,
      message: json['message'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$NotificationEntityToJson(NotificationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isRead': instance.isRead,
      'title': instance.title,
      'message': instance.message,
      'createdAt': instance.createdAt?.toIso8601String(),
      'imageUrl': instance.imageUrl,
    };
