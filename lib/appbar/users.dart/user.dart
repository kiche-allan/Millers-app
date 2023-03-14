import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_card/users/model.dart';

DatabaseReference databaseReference = FirebaseDatabase.instance.ref();

class UserRepo extends GetxController {
  static UserRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(FarmerInfo farmer) async {
    await _db
        .collection("farmerInfo")
        .add(farmer.toJson())
        .whenComplete(() => Get.snackbar(
            "Success", "Your account has been created.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green))
        .catchError((error, StackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
