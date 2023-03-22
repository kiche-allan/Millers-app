import 'package:ecommerce/functPart/display.dart';
import 'package:ecommerce/functPart/model.dart';
import 'package:ecommerce/functPart/user.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final userRepo = Get.put(UserRepo());

  Future<void> createUser(FarmerInfo farmer) async {
    await userRepo.createUser(farmer);
    Get.to(() => FarmerInfoCard);
    if (kDebugMode) {
      print('User Created Successfully');
    }
  }
}
