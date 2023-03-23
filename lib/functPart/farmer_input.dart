//import 'dart:js_util';

import 'package:ecommerce/bottomnavigation/contactus.dart';
import 'package:ecommerce/functPart/model.dart';
import 'package:ecommerce/functPart/otp.dart';
import 'package:ecommerce/functPart/signup_ctrlr.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FarmerInputForm extends StatefulWidget {
  const FarmerInputForm({Key? key}) : super(key: key);

  @override
  FarmerInputFormState createState() => FarmerInputFormState();
}

class FarmerInputFormState extends State<FarmerInputForm> {
  final _formKey = GlobalKey<FormState>();
  final farmerNameController = TextEditingController();
  final maizeBagsController = TextEditingController();
  final countyController = TextEditingController();
  final contactInfoController = TextEditingController();

  @override
  void dispose() {
    farmerNameController.dispose();
    maizeBagsController.dispose();
    countyController.dispose();
    contactInfoController.dispose();
    super.dispose();
  }

  //var verificationId = ''.obs;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farmer Input Form',
      home: Scaffold(
        //backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: const Text('Maize Selling Place'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightGreen, Colors.greenAccent],
            ),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  TextFormField(
                    controller: farmerNameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Name',
                      labelText: 'Farmer Name',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: maizeBagsController,
                    decoration: const InputDecoration(
                      hintText: 'How many Maize Bags?',
                      labelText: 'Maize Bags',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter number of maize bags';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: countyController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your County',
                      labelText: 'County',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your county name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: contactInfoController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Contact Info',
                      labelText: 'Contact Info',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your contact info';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final farmer = FarmerInfo(
                          farmerName: farmerNameController.text,
                          maizeBags: int.parse(maizeBagsController.text),
                          county: countyController.text,
                          contactInfo: contactInfoController.text,
                        );

                        SignUpController.instance
                            .createUser(farmer)
                            .then((value) {
                          //Get.to(() => const otpScreeen());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage())
                          );
                          
                        })
                        .catchError((e) {
                          if (kDebugMode) {
                            print('Error: $e');
                          }
                        });
                        if (kDebugMode) {
                          print('farmerInfo collection updated successfully');
                        }
                      }
                    },
                    child: const Text('Submit'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      "Note that 1 Maize Bag Is  90Kgs  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 150, 95, 95),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 4.0,
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: ContactUsBar(),
      ),

    );
  }
}
//Phone number authentication
/*
Future<void> phoneAuthentication(String contactInfoController) async {
  await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: contactInfoController,
      verificationCompleted: (credentials) async {
        await FirebaseAuth.instance.signInWithCredential(credentials);
      },
      verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar(
              'Error', 'The code is invalid.');
          } else {
            Get.snackbar('Error', 'Something went wrong. Try again.',);
          }
      },
      codeSent: ((verificationId, resendToken) {
        
      }),
      codeAutoRetrievalTimeout: (verificationId) {

      });
}
*/