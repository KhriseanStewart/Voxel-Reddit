import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:voxel_app/main.dart';

void main() {
  testWidgets('shows the home screen and switches to Explore', (tester) async {
    await tester.pumpWidget(const VoxelApp());

    expect(find.text('Welcome to Voxel'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.explore_outlined));
    await tester.pumpAndSettle();

    expect(find.text('A little more about Voxel.'), findsOneWidget);
    expect(find.text('Made for every screen'), findsOneWidget);
  });

  testWidgets('allows selecting a theme', (tester) async {
    await tester.pumpWidget(const VoxelApp());

    await tester.tap(find.byTooltip('Choose theme'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Dark theme'));
    await tester.pumpAndSettle();

    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(materialApp.themeMode, ThemeMode.dark);
  });
}
