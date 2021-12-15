// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keyboard_connection_example/main.dart';

void main() {
  testWidgets('Verify Platform version', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(
      find.byWidgetPredicate(
        (Widget widget) =>
            widget is Text &&
            widget.data!.contains('keyboard initially connected'),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget widget) =>
            widget is Text && widget.data!.contains('keyboard connected'),
      ),
      findsOneWidget,
    );
  });
}
