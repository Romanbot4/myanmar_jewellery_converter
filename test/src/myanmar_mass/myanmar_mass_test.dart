import 'package:myanmar_jewellery_converter/myanmar_jewellery_converter.dart';
import 'package:test/test.dart';

void main() {
  group('MyanmarMass Tests', () {
    test('Test creation from individual units', () {
      final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      expect(mass.kyat, 2);
      expect(mass.pae, 3);
      expect(mass.yawe, 4);
    });

    test('Test creation from total yawes', () {
      final mass = MyanmarMass.fromYawe(100);
      expect(mass.asYawes, 100);
    });

    test('Test creation from total paes', () {
      final mass = MyanmarMass.fromPae(24);
      expect(mass.asPaes, 24);
    });

    test('Test creation from total kyats', () {
      final mass = MyanmarMass.fromKyat(2);
      expect(mass.asKyats, 2);
    });

    test('Test creation from total muu', () {
      final mass = MyanmarMass.fromMuu(5);
      expect(mass.asMuu, 5);
    });

    test('Test creation from total matt', () {
      final mass = MyanmarMass.fromMatt(10);
      expect(mass.asMatt, 10);
    });

    test('Test multiplication operator', () {
      final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      final multiplied = mass * 2;
      expect(multiplied.asYawes, 2 * mass.asYawes);
    });

    test('Test division operator', () {
      final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      final divided = mass / 2;
      expect(divided.asYawes, mass.asYawes / 2);
    });

    test('Test addition operator', () {
      final mass1 = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      final mass2 = MyanmarMass(kyat: 1, pae: 2, yawe: 3);
      final added = mass1 + mass2;
      expect(added.asYawes, mass1.asYawes + mass2.asYawes);
    });

    test('Test subtraction operator', () {
      final mass1 = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      final mass2 = MyanmarMass(kyat: 1, pae: 2, yawe: 3);
      final subtracted = mass1 - mass2;
      expect(subtracted.asYawes, mass1.asYawes - mass2.asYawes);
    });

    test('Test asGrams conversion', () {
      final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      expect(mass.asGrams, (2 + (3 / 16) + (4 / (16 * 8))) * 16.6);
    });

    // Add more tests for other methods and edge cases
  });
}
