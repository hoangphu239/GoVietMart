class NotificationModel {
  String date;
  List<DescriptionNotificationModel> descriptions;

  NotificationModel({
    required this.date,
    required this.descriptions,
  });
}

class DescriptionNotificationModel {
  bool isTimeAgo;
  String description;
  String created_at;
  bool isFirst;

  DescriptionNotificationModel({
    required this.isTimeAgo,
    required this.description,
    required this.created_at,
    this.isFirst = false,
  });
}

List<NotificationModel> getListNotification() {
  return [
    NotificationModel(
      date: "TODAY",
      descriptions: [
        DescriptionNotificationModel(isTimeAgo: true, description: "30 minutes ago", created_at: "", isFirst: true),
        DescriptionNotificationModel(isTimeAgo: false, description: "Don't forget to deliver files to Doni", created_at: "07:15"),
        DescriptionNotificationModel(isTimeAgo: false, description: "Weekly futsal match between Rt.03 vs Rt.04.\nReminding team to prepare", created_at: "07:30"),
        DescriptionNotificationModel(isTimeAgo: true, description: "1h ago", created_at: ""),
        DescriptionNotificationModel(isTimeAgo: false, description: "Watch the comment @Net", created_at: "07:15"),
        DescriptionNotificationModel(isTimeAgo: false, description: "Finish daily UI", created_at: "07:30"),
      ],
    ),
    NotificationModel(
      date: "YESTERDAY",
      descriptions: [
        DescriptionNotificationModel(isTimeAgo: false, description: "Don't forget to deliver files to Doni", created_at: "07:15", isFirst: true),
        DescriptionNotificationModel(isTimeAgo: false, description: "Weekly futsal match between Rt.03 vs Rt.04.\nReminding team to prepare", created_at: "07:30"),
        DescriptionNotificationModel(isTimeAgo: false, description: "Watch the comment @Net", created_at: "07:15"),
        DescriptionNotificationModel(isTimeAgo: false, description: "Finish daily UI", created_at: "07:30"),
      ],
    ),
    NotificationModel(
      date: "2 DAYS AGO",
      descriptions: [
        DescriptionNotificationModel(isTimeAgo: false, description: "Don't forget to deliver files to Doni", created_at: "07:15", isFirst: true),
      ],
    ),
    NotificationModel(
      date: "1 WEEK AGO",
      descriptions: [
        DescriptionNotificationModel(isTimeAgo: false, description: "Don't forget to deliver files to Doni", created_at: "07:15", isFirst: true),
        DescriptionNotificationModel(isTimeAgo: false, description: "Weekly futsal match between Rt.03 vs Rt.04.\nReminding team to prepare", created_at: "07:30"),
        DescriptionNotificationModel(isTimeAgo: false, description: "Watch the comment @Net", created_at: "07:15"),
        DescriptionNotificationModel(isTimeAgo: false, description: "Finish daily UI", created_at: "07:30"),
      ],
    ),
  ];
}
