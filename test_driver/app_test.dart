import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('App', () {
    FlutterDriver driver;

    final actionChip = find.byValueKey('actionChip');
    final actionChipLabelText = find.byValueKey('actionChipLabelText');

    // 运行之前做的事情
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('starts at 0', () async {
      expect(await driver.getText(actionChip), '0');
    });

    test('increments the counter', () async {
      await driver.tap(actionChip);

      expect(await driver.getText(actionChipLabelText), '1');
    });
  });
}

// flutter driver --target=test_driver/app.dart
