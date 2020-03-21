import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ninghao_flutter/demo/test/test_demo.dart';

void main() {
  test('should return hello + something.', () {
    var string = MyTestDemo.greet('ninghao');
    expect(string, 'hello ninghao'); // 断言
  });

  testWidgets('widget testing dmeo', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TestDemo(),
      ),
    );
  });
}
