import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required int id,
    required String name,
    required String image,
    required int num_sold,
    required double percent_sold,
    required int discount_percent,
    required String price,
    required String discount_price,
    required bool is_now_on_sale,
  }) : super(
          id: id,
          name: name,
          image: image,
          num_sold: num_sold,
          percent_sold: percent_sold,
          discount_percent: discount_percent,
          price: price,
          discount_price: discount_price,
          is_now_on_sale: is_now_on_sale,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      num_sold: json['num_sold'],
      percent_sold: json['percent_sold'],
      discount_percent: json['discount_percent'],
      price: json['price'],
      discount_price: json['discount_price'],
      is_now_on_sale: json['is_now_on_sale'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['num_sold'] = num_sold;
    data['percent_sold'] = percent_sold;
    data['discount_percent'] = discount_percent;
    data['price'] = price;
    data['discount_price'] = discount_price;
    data['is_now_on_sale'] = is_now_on_sale;
    return data;
  }
}

List<ProductModel> getProducts() {
  return [
    ProductModel(id: 1, name: 'Black socks sport', image: ImageConstant.flashSaleProduct_1, num_sold: 29, percent_sold: 0.25, discount_percent: -30, price: '40.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 2, name: 'White Shoes sport', image: ImageConstant.flashSaleProduct_2, num_sold: 59, percent_sold: 0.6, discount_percent: -70, price: '120.000 VND',  discount_price: '', is_now_on_sale: false),
    ProductModel(id: 3, name: 'Black Skime watch', image: ImageConstant.flashSaleProduct_3, num_sold: 200, percent_sold: 0.8, discount_percent: -30, price: '35.000 VND',  discount_price: '', is_now_on_sale: false),
    ProductModel(id: 4, name: 'Bitis shoes hunter street', image: ImageConstant.flashSaleProduct_4, num_sold: 2, percent_sold: 0.1, discount_percent: -40, price: '90.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 1, name: 'Black socks sport', image: ImageConstant.flashSaleProduct_1, num_sold: 29, percent_sold: 0.25, discount_percent: -30, price: '40.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 2, name: 'White Shoes sport', image: ImageConstant.flashSaleProduct_2, num_sold: 59, percent_sold: 0.6, discount_percent: -70, price: '120.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 3, name: 'Black Skime watch', image: ImageConstant.flashSaleProduct_3, num_sold: 200, percent_sold: 0.8, discount_percent: -30, price: '35.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 4, name: 'Bitis shoes hunter street', image: ImageConstant.flashSaleProduct_4, num_sold: 2, percent_sold: 0.1, discount_percent: -40, price: '90.000 VND', discount_price: '', is_now_on_sale: false),
  ];
}

List<ProductModel> getViewedProducts() {
  return [
    ProductModel(id: 1, name: 'Bitis\'s Shoes Hunter Street VietMax Culture', image: ImageConstant.flashSaleProduct_4, num_sold: 29, percent_sold: 0.25, discount_percent: -30, price: '575.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 2, name: 'Zara T-shirt Circle Neck', image: ImageConstant.flashSaleProduct_5, num_sold: 29, percent_sold: 0.25, discount_percent: -30, price: '275.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 3, name: 'Bitis\'s Shoes Hunter Street VietMax Culture', image: ImageConstant.flashSaleProduct_4, num_sold: 29, percent_sold: 0.25, discount_percent: -30, price: '575.000 VND', discount_price: '', is_now_on_sale: false),
    ProductModel(id: 4, name: 'Zara T-shirt Circle Neck', image: ImageConstant.flashSaleProduct_5, num_sold: 29, percent_sold: 0.25, discount_percent: -30, price: '275.000 VND', discount_price: '', is_now_on_sale: false),
  ];
}

List<ProductModel> getProductsOfShop() {
  return [
    ProductModel(id: 1, name: 'Bitis\'s Shoes Hunter Street VietMax Culture', image: ImageConstant.bgProductOfShop_1, num_sold: 0, percent_sold: 0, discount_percent: 0, price: '900.000 VND', discount_price: '575.000 VND', is_now_on_sale: true),
    ProductModel(id: 2, name: 'Zara T-shirt Circle Neck', image: ImageConstant.bgProductOfShop_2, num_sold: 0, percent_sold: 0, discount_percent: 0, price: '400.000 VND', discount_price: '275.000 VND', is_now_on_sale: false),
    ProductModel(id: 3, name: 'Unisex T-shirt', image: ImageConstant.bgProductOfShop_3, num_sold: 0, percent_sold: 0, discount_percent: 0, price: '900.000 VND', discount_price: '575.000 VND', is_now_on_sale: false),
    ProductModel(id: 4, name: 'Dispatcher Jacket with Japanese Pattern', image: ImageConstant.bgProductOfShop_4, num_sold: 0, percent_sold: 0, discount_percent: 0, price: '900.000 VND', discount_price: '575.000 VND', is_now_on_sale: false),
    ProductModel(id: 5, name: 'Leather wallet for men', image: ImageConstant.bgProductOfShop_5, num_sold: 0, percent_sold: 0, discount_percent: 0, price: '900.000 VND', discount_price: '575.000 VND', is_now_on_sale: false),
  ];
}
