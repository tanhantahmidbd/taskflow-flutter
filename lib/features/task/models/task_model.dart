class TaskResponseModel {
  final int id;
  final String title;
  final String description;
  final int isFav;
  final String status;
  final String priority;
  final DateTime startDate;
  final DateTime? endDate;
  final String name;
  final String icon;
  final DateTime createdAt;

  TaskResponseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.isFav,
    required this.status,
    required this.priority,
    required this.startDate,
    required this.endDate,
    required this.name,
    required this.icon,
    required this.createdAt,
  });

  factory TaskResponseModel.fromJson(Map<String, dynamic> json) =>
      TaskResponseModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        isFav: json["is_fav"],
        status: json["status"],
        priority: json["priority"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: json["end_date"] != null
            ? DateTime.parse(json["end_date"])
            : null,
        name: json["name"],
        icon: json["icon"],
        createdAt: DateTime.parse(json["created_at"]),
      );
}


class TaskRequestModel {
  final String title;
  final String description;
  final bool? is_fav;
  final String? status;
  final String? priority;
  final DateTime? startDate;
  final DateTime endDate;
  final int categoryId;

  TaskRequestModel({
    required this.title,
    required this.description,
    this.is_fav = false,
    this.status = "pending",
    this.priority = "medium",
    this.startDate,
    required this.endDate,
    required this.categoryId,
  });

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "is_fav": is_fav,
        "status": status,
        "priority": priority,
        "start_date": startDate != null
            ? "${startDate!.year.toString().padLeft(4, '0')}-"
              "${startDate!.month.toString().padLeft(2, '0')}-"
              "${startDate!.day.toString().padLeft(2, '0')}"
            : null,
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-"
            "${endDate.month.toString().padLeft(2, '0')}-"
            "${endDate.day.toString().padLeft(2, '0')}",
        "category_id": categoryId,
      };
}

class TaskUpdateModel {
  final String? title;
  final String? description;
  final bool? isFav;
  final String? status;
  final String? priority;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? categoryId;

  TaskUpdateModel({
    this.title,
    this.description,
    this.isFav,
    this.status,
    this.priority,
    this.startDate,
    this.endDate,
    this.categoryId,
  });

  Map<String, dynamic> toJson() => {
        if (title != null) "title": title,
        if (description != null) "description": description,
        if (isFav != null) "is_fav": isFav,
        if (status != null) "status": status,
        if (priority != null) "priority": priority,
        if (startDate != null)
          "start_date":
              "${startDate!.year.toString().padLeft(4, '0')}-"
              "${startDate!.month.toString().padLeft(2, '0')}-"
              "${startDate!.day.toString().padLeft(2, '0')}",
        if (endDate != null)
          "end_date":
              "${endDate!.year.toString().padLeft(4, '0')}-"
              "${endDate!.month.toString().padLeft(2, '0')}-"
              "${endDate!.day.toString().padLeft(2, '0')}",
        if (categoryId != null) "category_id": categoryId,
      };
}