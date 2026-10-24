// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mold_list/main.dart';

void main() {
  testWidgets('Список пресс-форм отображается и фильтруется поиском',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MoldApp());

    // Заголовок экрана
    expect(find.text('Пресс-формы от Геннадия Лыщенко'), findsOneWidget);

    // Первая позиция списка видна
    expect(find.text('Ведро 15л овальное'), findsOneWidget);

    // Поиск фильтрует список по названию
    await tester.enterText(find.byType(TextField), 'Грабли');
    await tester.pump();

    expect(find.text('Грабли веерные'), findsOneWidget);
    expect(find.text('Ведро 15л овальное'), findsNothing);
  });
}
