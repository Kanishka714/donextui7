import 'package:flutter/material.dart';
import 'package:donextui7/custom_textfield.dart';
import 'package:donextui7/my_button.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:flutter/services.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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

          /*  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PinCodeTextField(
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  autofocus: true,
                  hideCharacter: false,
                  highlight: true,
                  highlightColor: Colors.blue,
                  defaultBorderColor: Colors.black,
                  hasTextBorderColor: Colors.white38,
                  pinBoxWidth: 50,
                  pinBoxHeight: 50,
                  pinBoxRadius: 10,
                  pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinTextStyle: TextStyle(fontSize: 22.0),
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                  pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                  onTextChanged: (text) {},
                ),
              ],
            ),
            
           */
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // Define border style
                          borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none, // Hide default TextField border
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 25.0),

                  SizedBox(
                    height: 50,
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // Define border style
                          borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none, // Hide default TextField border
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 25.0),


                  SizedBox(
                    height: 50,
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // Define border style
                          borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none, // Hide default TextField border
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 25.0),


                  SizedBox(
                    height: 50,
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // Define border style
                          borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none, // Hide default TextField border
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 25.0),

                ],
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
