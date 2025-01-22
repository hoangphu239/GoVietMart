abstract class ProductEntity {
  final int id;
  final String name;
  final String image;
  final int num_sold;
  final double percent_sold;
  final int discount_percent;
  final String price;
  final String discount_price;
  final bool is_now_on_sale;

  ProductEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.num_sold,
    required this.percent_sold,
    required this.discount_percent,
    required this.price,
    required this.discount_price,
    required this.is_now_on_sale,
  });
}