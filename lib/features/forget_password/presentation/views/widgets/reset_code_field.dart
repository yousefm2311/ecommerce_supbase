import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class ResetCodeField extends StatelessWidget {
  const ResetCodeField({super.key});


  @override
  Widget build(BuildContext context) {
    return OtpTextField(
        numberOfFields: 6,
        fieldWidth: 42,
        borderColor: const Color(0xFF512DA8),
        showFieldAsBox: true,
        onCodeChanged: (String code) {
          showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Verification Code"),
              content: Text('Code entered is $code'),
            );
          },
        );
        },

         // end onSubmit
    );
  }
}