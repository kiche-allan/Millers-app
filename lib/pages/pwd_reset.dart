import 'package:ecommerce/pages/pwd_reset_success.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({Key? key}) : super(key: key);

  @override
  PasswordResetScreenState createState() => PasswordResetScreenState();
}

class PasswordResetScreenState extends State<PasswordResetScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _handlePasswordReset() {
    final email = _emailController.text;
    if (_formKey.currentState!.validate()) {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email)
      .then((value) {
        if (kDebugMode) {
          print('Password Reset Email Sent Successfully');
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const PasswordResetSuccessScreen()),
        );
      }).onError((error, stackTrace) {
        if (kDebugMode) {
          print("Error ${error.toString()}");
        }
      });

      // Send reset link to user's email
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Reset'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 78, 136, 236),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'xxxx@yyy.zz',
                  labelText: 'Email',
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  if (!isValidEmail(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _handlePasswordReset,
                child: const Text('Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
bool isValidEmail(String value) {
  final RegExp emailRegex =
      RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
  return emailRegex.hasMatch(value);
}
