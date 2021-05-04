import 'package:flutter_test/flutter_test.dart';
import 'package:get_try/ui/views/home/home_controller.dart';

void main() {
  group(
    "counter functionality tests",
    () {
      test(
        "counter value is 0 at intialization",
        () {
          final HomeController _homeController = HomeController();

          final int _counterValueAtInitialization =
              _homeController.counter.value;

          expect(_counterValueAtInitialization, equals(0));
        },
      );

      test(
        "counter is increased by 1 after running incrementCounter",
        () {
          final HomeController _homeController = HomeController();

          final int _counterValueBeforeIncrease = _homeController.counter.value;

          _homeController.incrementCounter();

          expect(_homeController.counter.value,
              equals(_counterValueBeforeIncrease + 1));
        },
      );
    },
  );
}
