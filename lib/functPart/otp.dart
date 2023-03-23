import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class otpScreeen extends StatelessWidget {
  const otpScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    var otptxt;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'OTP\nCODE ',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),
          ),
          otptxt = const Text(
            'VERIFICATION',
          ),
          Text(
            otptxt.toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 40.0,
          ),
          //TODO: add phone number variable
          const Text('Enter verification code sent.'),
          const SizedBox(
            height: 20.0,
          ),
          OtpTextField(
            numberOfFields: 6,
            fillColor: Colors.black.withOpacity(0.2),
            filled: true,
            onSubmit: (code) {
              if (kDebugMode) {
                print('OTP is = > $code');
              }
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Confirm')),
          )
        ]),
      ),
    );
  }
}
