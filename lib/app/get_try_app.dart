import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_try/ui/views/home/home_view.dart';

class GetTryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeView(),
    );
  }
}
