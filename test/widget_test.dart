import 'package:flutter_test/flutter_test.dart';
import 'package:lavagna_tattica/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
  });
}
