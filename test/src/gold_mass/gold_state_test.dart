import 'package:myanmar_jewellery_converter/myanmar_jewellery_converter.dart';
import 'package:test/test.dart';

void main() {
  group("GoldState", () {
    test("constructor", () {
      final String tId = "id";
      final String tName = "name";
      final double tNumerator = 1.2;
      final double tDenominator = 3.4;

      final object = GoldStateInfo(
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
      final object1 = GoldStateInfo(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 3.4,
      );

      final object2 = GoldStateInfo(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 5.6,
      );

      expect(object1 == object2, false);
    });

    test("equality return true if equal", () {
      final object1 = GoldStateInfo(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 3.4,
      );

      final object2 = GoldStateInfo(
        id: 'id',
        name: 'name',
        numerator: 1.2,
        denominator: 3.4,
      );

      expect(object1 == object2, true);
    });
  });
}
