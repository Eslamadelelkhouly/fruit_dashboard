import 'package:flutter/material.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/custom_check_box.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/custom_text_check_box.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/image_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
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
                text: 'Product Name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                text: 'Product Price',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                text: 'Product code',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              IsFeaturedItem(
                onChanged: (value) {},
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
              ImageField(
                onChange: (image) {
                  // Handle image change
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
