import 'package:flutter/material.dart';
import 'package:donextui7/custom_textfield.dart';
import 'package:donextui7/my_button.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 40.0),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verification code',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32.0),
                        ),
                        Text(
                          'Please enter the code we sent to',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Catherinjames@gmail.com',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                ),
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                  });
                },
              ),
            ),

            SizedBox(height: 30.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Container(
                width: double.infinity,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 40.0),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create new password',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32.0),
                        ),
                        Text(
                          'Your name and password must be different from\n previously used passwords',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.lock, color: Colors.teal.shade300),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Must be at least 8 characters"),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Confirm Password',
                      suffixIcon: Icon(Icons.lock, color: Colors.teal.shade300),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Both passwords must match"),
              ],
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(color: Colors.teal.shade300, buttonText: " Reset Password ", textColor: Colors.white),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
