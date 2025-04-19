import 'package:fruit_dashboard/feature/add_product/presentation/views/domain/entities/add_product_entity.dart';

abstract class AddProductRepo {
  Future<void> addProduct({
    required AddProductEntity productModel,
  });
}