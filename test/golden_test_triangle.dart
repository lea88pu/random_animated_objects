import 'package:flutter_test/flutter_test.dart';
import 'package:random_animated_objects/ui/triangle.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(Triangle());
    await expectLater(find.byType(Triangle), matchesGoldenFile('triangle.png'));
  });
}