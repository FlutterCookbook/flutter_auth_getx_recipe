import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text(
            'Login with Google',
          ),
          onPressed: () {
            // Call the sign in method
            authController.signInWithGoogle();
          },
        ),
      ),
    );
  }
}
