import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class HomePage extends StatelessWidget {
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello ${authController.firebaseUser.displayName}',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            FlatButton.icon(
              onPressed: authController.signOut,
              icon: Icon(Icons.exit_to_app),
              label: Text('Sign Out'),
            )
          ],
        ),
      ),
    );
  }
}
