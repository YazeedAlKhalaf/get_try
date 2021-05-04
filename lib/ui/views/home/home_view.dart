import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_try/ui/views/home/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = HomeController();

    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(
            "${_homeController.counter.value}",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              _homeController.incrementCounter();
            },
            child: Icon(
              Icons.add,
            ),
          ),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: () {
              _homeController.decrementCounter();
            },
            child: Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
