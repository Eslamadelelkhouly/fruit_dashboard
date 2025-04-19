import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruit_dashboard/core/widgets/custom_button.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/feature_item_checkbox.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/image_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, code, description;
  late double price;
  File? image;
  bool isFeatured = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                text: 'Product Name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  price = double.parse(value!);
                },
                text: 'Product Price',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
                text: 'Product code',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  description = value!;
                },
                text: 'Product Description',
                keyboardType: TextInputType.multiline,
                maxLines: 5,
              ),
              const SizedBox(height: 16),
              IsFeaturedItem(
                onChanged: (value) {
                  isFeatured = value;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
              ImageField(
                onChange: (image) {
                  this.image = image;
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                onPressed: () {
                  if (image != null) {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please add a product image'),
                      ),
                    );
                  }
                },
                text: 'Add Product',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
