abstract class PromotionEntity {
  final int id;
  final String name;
  final String image;
  final String? distance;

  PromotionEntity({
    required this.id,
    required this.name,
    required this.image,
    this.distance,
  });
}