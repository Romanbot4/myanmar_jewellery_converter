import 'package:myanmar_jewellery_converter/myanmar_jewellery_converter.dart';
import 'package:test/test.dart';

void main() {
  group('MyanmarMass Tests', () {
    test('as16PaeYayGoldState method on 16PaeYae return the same mass', () {
      final tMass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      final tGold = MyanmarGoldMass(mass: tMass, state: GoldStates.A0);

      final gold = tGold.as16PaeYayGoldState();

      expect(gold.mass.kyat, 2);
      expect(gold.mass.pae, 3);
      expect(gold.mass.yawe, 4);
    });


    test('as16PaeYayGoldState method on 8PaeYae return the half mass', () {
      final tMass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
      final tGold = MyanmarGoldMass(mass: tMass, state: GoldStates.I0);

      final gold = tGold.as16PaeYayGoldState();

      expect(gold.mass.asKyats, tGold.mass.asKyats * 16 / 24);
      // expect(gold.mass.pae, 7);
      // expect(gold.mass.yawe.toInt(), 5);
    });
  });
}
