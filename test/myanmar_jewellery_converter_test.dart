import 'package:test/test.dart';

import 'src/gold_mass/gold_state_test.dart' as test1;
import 'src/myanmar_gold_mass/myanmar_gold_mass_test.dart' as test2;
import 'src/myanmar_mass/myanmar_mass_test.dart' as test3;

void main() {
  group("Myanmar Jewellery Converter", () {
    test1.main();
    test2.main();
    test3.main();
  });
}