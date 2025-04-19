import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruit_dashboard/core/errors/failures.dart';

abstract class ImagesRepo {
  Future<Either<Failures, String>> uploadImage(File image);
}
