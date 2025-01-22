import 'dart:ui';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/data/models/color_model.dart';
import 'package:hunty/data/models/product_model.dart';
import 'package:hunty/data/models/thumbnail_model.dart';

class DetailsProductModel {
  final String cover;
  final List<ThumbnailModel> thumbnails;
  final String name;
  final double rating;
  final String price;
  final String discountPrice;
  final List<ColorModel> colors;
  final String category;
  final String providedBy;
  final String brand;
  final String manufactured;
  final String description;
  final List<ProductModel> viewedProducts;
  final List<ProductModel> similarProducts;

  DetailsProductModel({
    required this.cover,
    required this.thumbnails,
    required this.name,
    required this.rating,
    required this.discountPrice,
    required this.price,
    required this.colors,
    required this.category,
    required this.providedBy,
    required this.brand,
    required this.manufactured,
    required this.description,
    required this.viewedProducts,
    required this.similarProducts,
  });
}

DetailsProductModel getDetailsProduct() {
  return DetailsProductModel(
      cover: ImageConstant.bgCoverDetailsProduct,
      thumbnails: [
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_1, isSelected: false),
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_2, isSelected: false),
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_1, isSelected: false),
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_2, isSelected: false),
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_1, isSelected: false),
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_2, isSelected: false),
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_1, isSelected: false),
        ThumbnailModel(image: ImageConstant.thumbnailDetailsProduct_2, isSelected: false),
      ],
      name: "Oxford Men White Shirt Korean Style",
      rating: 4.9,
      discountPrice: "450.000 VND",
      price: "600.000 VND",
      colors: [
        ColorModel(color: const Color(0xFFFFD100), isSelected: false),
        ColorModel(color: const Color(0xFFFE2070), isSelected: false),
        ColorModel(color: const Color(0xFF2C2E32), isSelected: false),
        ColorModel(color: const Color(0xFF34BE84), isSelected: false),
      ],
      category: "Fashion",
      providedBy: "Lotte",
      brand: "Routine",
      manufactured: "Vietnam",
      description: """
        <div>
          <p>An Oxford Shirt is usually considered a type of dress shirt, but the Oxford shirt is different from a regular dress shirt in two ways: They usually have a button down-style collar which eliminates that problem of collars flopping around and/or laying flat and disappearing underneath a jacket's collar.</p>
          <img src="https://linhvnxk.com/wp-content/uploads/2020/07/f9d2ce2b86d08985e5f42996d9a28da3.jpg" alt="img_description" />
          <p>An Oxford Shirt is usually considered a type of dress shirt, but the Oxford shirt is different from a regular dress shirt in two ways: They usually have a button down-style collar which eliminates that problem of collars flopping around and/or laying flat and disappearing underneath a jacket's collar.</p>
        </div>
      """,
      viewedProducts: getViewedProducts(),
      similarProducts: getProductsOfShop()
  );
}

