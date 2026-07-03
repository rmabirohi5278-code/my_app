import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_app/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen shows counter and increments on tap', (
    WidgetTester tester,
  ) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(
      const MaterialApp(home: HomeScreen()),
    );
    await tester.pump();

    expect(find.textContaining('Counter:'), findsOneWidget);

    await tester.tap(find.text('Add'));
    await tester.pump();
    await tester.pump();

    expect(find.text('Counter: 1'), findsOneWidget);
  });
}