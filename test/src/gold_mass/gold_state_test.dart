import 'package:myanmar_jewellery_converter/src/myanmar_gold_mass/myanmar_gold_state.dart';
import 'package:test/test.dart';

void main() {
  group("GoldState", () {
    test("constructor", () {
      final String tId = "id";
      final String tName = "name";
      final double tNumerator = 1.2;
      final double tDenominator = 3.4;

      final object = GoldState(
        id: tId,
        name: tName,
        numerator: tNumerator,
        denominator: tDenominator,
      );

      expect(object.id, tId);
      expect(object.name, tName);
      expect(object.numerator, tNumerator);
      expect(object.denominator, tDenominator);
    });

    test("equality return false if not equal", () {
      final object1 = GoldState(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 3.4,
      );

      final object2 = GoldState(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 5.6,
      );

      expect(object1 == object2, false);
    });

    test("equality return true if equal", () {
      final object1 = GoldState(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 3.4,
      );

      final object2 = GoldState(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 3.4,
      );

      expect(object1 == object2, true);
    });
  });
}
