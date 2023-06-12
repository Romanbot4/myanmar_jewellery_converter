import 'package:flutter_test/flutter_test.dart';
import 'package:myanmar_jewellery_converter/myanmar_jewellery_converter.dart';

void main() {
  test(
    'Myanmar Jewellery Converter',
    () {
      const braceletMass = MyanmarMass(kyat: 1, pae: 4);
      print(braceletMass.detailsString);
    },
  );
}
