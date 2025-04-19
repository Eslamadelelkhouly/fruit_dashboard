import 'dart:io';

class AddProductEntity {
  final String name;
  final String description;
  final String code;
  final bool isFeatured;
  final double price;
  final File imageFile;
  final String? imageUrl;

  AddProductEntity({
    required this.name,
    required this.description,
    required this.code,
    required this.isFeatured,
    required this.price,
    required this.imageFile,
    this.imageUrl,
  });
}
