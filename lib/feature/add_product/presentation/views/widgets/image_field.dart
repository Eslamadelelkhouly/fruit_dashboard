import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key});

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          isLoading = true;
          setState(() {});
          try {
            final ImagePicker picker = ImagePicker();
            // Pick an image.
            final XFile? image =
                await picker.pickImage(source: ImageSource.gallery);
          } on Exception catch (e) {
            print(e);
          }
          isLoading = false;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            Icons.image_outlined,
            size: 180,
          ),
        ),
      ),
    );
  }
}
