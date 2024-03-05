import 'package:donextui7/custom_textfield.dart';
import 'package:donextui7/my_button.dart';
import 'package:flutter/material.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 100.0),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Show us it\'s you!\n',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 32),
                          ),
                          TextSpan(
                            text: 'Please verify your email to continue',
                            style: TextStyle(color: Colors.grey,fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ), // Add space between RichText and CustomTextField
                ],
              ),
            ),
          ),

          SizedBox(height: 20.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: 'Email Address',
                    suffixIcon: Icon(Icons.email, color: Colors.teal.shade300), // Change suffix icon as needed
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 550.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(color: Colors.teal.shade300, buttonText: "       Continue       ", textColor: Colors.white),
            ],
          ),

        ],
      ),
    );
  }
}
