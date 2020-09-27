import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/auth_controller.dart';
import 'shared/loading_widget.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: App(),
    ),
  );
}

class App extends StatelessWidget {
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authController.checkUserLoggedIn(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error Processing');
        }
        if (snapshot.hasData) {
          return snapshot.data;
        }
        return LoadingWidget();
      },
    );
  }
}
