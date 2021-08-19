import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String? image,
    required String? title,
    required String? description,
    required int? price,
    required int? size,
    required String? id,
    int? color,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
