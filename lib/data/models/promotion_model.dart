import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/domain/entities/product_entity.dart';
import 'package:hunty/domain/entities/promotion_entity.dart';

class PromotionModel extends PromotionEntity {
  PromotionModel({
    required int id,
    required String name,
    required String image,
    String? distance,
  }) : super(
          id: id,
          name: name,
          image: image,
          distance: distance,
        );

  factory PromotionModel.fromJson(Map<String, dynamic> json) {
    return PromotionModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      distance: json['distance'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['distance'] = distance;
    return data;
  }
}

List<PromotionModel> getRecommendedPromotions() {
  return [
    PromotionModel(id: 1, name: 'Lotte Mart discount', image: ImageConstant.promotion_1, distance: '1.3 km from you'),
    PromotionModel(id: 2, name: 'Levi\'s sale 50%', image: ImageConstant.promotion_3, distance: '0.3 km from you'),
    PromotionModel(id: 3, name: 'Lotte Mart discount', image: ImageConstant.promotion_1, distance: '1.3 km from you'),
    PromotionModel(id: 4, name: 'Levi\'s sale 50%', image: ImageConstant.promotion_3, distance: '0.3 km from you'),
  ];
}

List<PromotionModel> getPromotionsNearYou() {
  return [
    PromotionModel(id: 1, name: 'Lotte Mart discount', image: ImageConstant.promotion_2, distance: '1.3 km from you'),
    PromotionModel(id: 2, name: 'Levi\'s sale 50%', image: ImageConstant.promotion_3, distance: '0.3 km from you'),
    PromotionModel(id: 3, name: 'Lotte Mart discount', image: ImageConstant.promotion_2, distance: '1.3 km from you'),
    PromotionModel(id: 2, name: 'Levi\'s sale 50%', image: ImageConstant.promotion_3, distance: '0.3 km from you'),
  ];
}

List<PromotionModel> getAllRecommendedPromotions() {
  return [
    PromotionModel(id: 1, name: 'Lotte Mart discount', image: ImageConstant.promotion_1, distance: '1.3 km from you'),
    PromotionModel(id: 2, name: 'Levi\'s sale 50%', image: ImageConstant.promotion_2, distance: '0.3 km from you'),
    PromotionModel(id: 3, name: 'Lotte Mart discount', image: ImageConstant.promotion_3, distance: '0.3 km from you'),
    PromotionModel(id: 3, name: 'Levi\'s sale 50%', image: ImageConstant.promotion_4, distance: '0.3 km from you'),
  ];
}

List<PromotionModel> getSearchPromotions() {
  return [
    PromotionModel(id: 1, name: 'Face mask', image: ImageConstant.search_promotion_1),
    PromotionModel(id: 2, name: 'Men\'s Jacket', image: ImageConstant.search_promotion_2),
    PromotionModel(id: 3, name: 'Men\'s Belt', image: ImageConstant.search_promotion_3),
    PromotionModel(id: 4, name: 'Women\'s Sneaker', image: ImageConstant.search_promotion_4),
  ];
}
