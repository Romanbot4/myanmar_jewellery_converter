import 'package:myanmar_jewellery_converter/myanmar_jewellery_converter.dart';

void main() {
  // Create a MyanmarMass object representing 2 Kyats, 3 Paes, and 4 Yawes
  final myanmarMass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);

  // Convert the mass to grams
  final grams = myanmarMass.asGrams;
  print('Myanmar Mass in Grams: $grams');

  // Create a GoldStateInfo object representing the gold state A0 (16 Pae Yay)
  final goldStateA0 = GoldStates.A0;

  // Create a MyanmarGoldMass object combining the gold state A0 and the Myanmar mass
  final myanmarGoldMass = MyanmarGoldMass(state: goldStateA0, mass: myanmarMass);

  // Convert the gold state of the mass to 8 Pae Yay gold state
  final newYayGoldMass = myanmarGoldMass.covertGoldState(GoldStates.I0);
  print('Converted Myanmar Gold Mass: ${newYayGoldMass.mass}');
}
