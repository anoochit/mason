import 'package:flutter_test/flutter_test.dart';
import 'package:{{name}}/main.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "Accessibility test",
    (tester) async {
      final SemanticsHandle handle = tester.ensureSemantics();

      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // Checks that tappable nodes have a minimum size of 48 by 48 pixels for Android.
      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));

      // Checks that tappable nodes have a minimum size of 44 by 44 pixels for iOS.
      await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));

      // Checks that touch targets with a tap or long press action are labeled.
      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));

      // Checks whether semantic nodes meet the minimum text contrast levels.
      // The recommended text contrast is 3:1 for larger text
      // (18 point and above regular).
      await expectLater(tester, meetsGuideline(textContrastGuideline));

      handle.dispose();
    },
  );
}
