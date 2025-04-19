import 'package:flutter/material.dart';
import 'package:fruit_dashboard/core/utils/constants/app_text_style.dart';
import 'package:fruit_dashboard/feature/add_product/presentation/views/widgets/custom_check_box.dart';

class IsFeaturedItem extends StatefulWidget {
  const IsFeaturedItem({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<IsFeaturedItem> createState() => _CustomTextCheckBoxState();
}

class _CustomTextCheckBoxState extends State<IsFeaturedItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChanged: (value) {
            isChecked = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isChecked,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Is featured item',
                  style: TextStyles.semiBold13.copyWith(
                    color: Color(0xFF616A6B),
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
