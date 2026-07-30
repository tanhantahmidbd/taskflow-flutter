class CategoryResponseModel {
  final int id;
  final String name;
  final String icon;

  CategoryResponseModel({
    required this.id,
    required this.name,
    required this.icon,
  });

  factory CategoryResponseModel.fromJson(Map<String,dynamic> json){
    return CategoryResponseModel(
      id: json["id"],
      name: json["name"],
      icon: json["icon"],
    );
  }
}

class CategoryRequestModel {
  final String name;
  final String icon;

  CategoryRequestModel({
    required this.name,
    required this.icon,
  });

  Map<String,dynamic> toJson (){
    return {
      'name': name,
      'icon': icon,
    };
  }
  
}

class CategoryUpdateModel {
  final String? name;
  final String? icon;

  CategoryUpdateModel({
    this.name,
    this.icon,
  });

  Map<String, dynamic> toJson() {
    return {
      if (name != null) "name": name,
      if (icon != null) "icon": icon,
    };
  }
}