library dal_converter;

import 'objects/constants.dart';
import 'objects/myanmar_gem.dart';
import 'objects/myanmar_mass.dart';

export 'objects/constants.dart';
export 'objects/myanmar_gem.dart';
export 'objects/myanmar_mass.dart';

abstract class MyanmarJewelleryConverter {
  static double caratToYati(double carat) {
    return MyanmarGem(carat: carat).asYati;
  }

  static double yatiToCarat(double yati) {
    return MyanmarGem(yati: yati).asCarat;
  }

  static MyanmarMass caratToGoldWeight(double carat) {
    double totalYawe = carat * 1.54;

    return MyanmarMass.fromYawe(totalYawe);
  }

  static double goldWeightToGrams(MyanmarMass mass) {
    return mass.asGrams;
  }

  static double calculateGoldPriceByKyat(
    MyanmarMass mass,
    double pricePerOneKyat,
  ) {
    return mass.calculatePriceByKyat(pricePerOneKyat);
  }

  static double calculateGemPriceByYati(
    MyanmarGem gem,
    double pricePerOneYati,
  ) {
    return gem.calculateGemPriceByYati(pricePerOneYati);
  }

  static double calculateGemPriceByCarat(
    MyanmarGem gem,
    double pricePerOneCarat,
  ) {
    return gem.calculateGemPriceByCarat(pricePerOneCarat);
  }

  static MyanmarMass changeGoldState({
    required MyanmarMass mass,
    required GoldState original,
    required GoldState change,
  }) {
    return mass.changeGoldState(
      original,
      change,
    );
  }
}
