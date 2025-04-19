import 'package:flutter/material.dart';
import 'package:fruit_dashboard/core/utils/constants/color_app.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(
          microseconds: 300,
        ),
        decoration: ShapeDecoration(
          color: isChecked ? ColorApp.kPrimaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isChecked ? Colors.transparent : Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                ),
              )
            : SizedBox(),
      ),
    );
  }
}
