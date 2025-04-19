import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key, required this.onChange});
  final ValueChanged<File?> onChange;
  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          isLoading = true;
          setState(() {});
          try {
            await PickImage();
          } on Exception catch (e) {
            print(e);
          }
          isLoading = false;
          setState(() {});
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(16),
              ),
              child: imageFile != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(imageFile!),
                    )
                  : Icon(
                      Icons.image_outlined,
                      size: 180,
                    ),
            ),
            Visibility(
              visible: imageFile != null,
              child: IconButton(
                onPressed: () {
                  imageFile = null;
                  widget.onChange(imageFile);
                  setState(() {});
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> PickImage() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    imageFile = File(image!.path);
    widget.onChange(imageFile!);
  }
}
