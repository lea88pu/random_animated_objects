import 'package:flutter_test/flutter_test.dart';
import 'package:random_animated_objects/ui/circle.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(Circle());
    await expectLater(find.byType(Circle), matchesGoldenFile('circle.png'));
  });
}