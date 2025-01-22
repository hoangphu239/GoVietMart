import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/image_constant.dart';

class CategoryModel {
  final int id;
  final String icon;
  final String name;
  final String image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['icon'] = icon;
    data['image'] = image;
    return data;
  }
}

List<CategoryModel> getCategories() {
  return [
    CategoryModel(id: 1, name: 'T-shirt', icon: IconsConstant.category_1, image: ImageConstant.thumbnailCategoryShirt),
    CategoryModel(id: 2, name: 'Accessories', icon: IconsConstant.category_2, image: ImageConstant.thumbnailCategoryAccessories),
    CategoryModel(id: 3, name: 'Phone', icon: IconsConstant.category_3, image: ImageConstant.thumbnailCategoryPhone),
    CategoryModel(id: 4, name: 'Head Phone', icon: IconsConstant.category_4, image: ImageConstant.thumbnailCategoryHeadphone),
    CategoryModel(id: 5, name: 'Handtilizer', icon: IconsConstant.category_5, image: ""),
    CategoryModel(id: 6, name: 'Skin Care', icon: IconsConstant.category_6, image: ""),
    CategoryModel(id: 7, name: 'Sneaker', icon: IconsConstant.category_7, image: ""),
    CategoryModel(id: 8, name: 'Watch', icon: IconsConstant.category_8, image: ""),
    CategoryModel(id: 9, name: 'Camera', icon: IconsConstant.category_9, image: ""),
    CategoryModel(id: 10, name: 'Pant', icon: IconsConstant.category_10, image: ""),
  ];
}
