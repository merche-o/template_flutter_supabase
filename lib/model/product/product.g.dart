// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      image: json['image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      size: json['size'] as int?,
      id: json['id'] as String?,
      color: json['color'] as int?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'size': instance.size,
      'id': instance.id,
      'color': instance.color,
    };
