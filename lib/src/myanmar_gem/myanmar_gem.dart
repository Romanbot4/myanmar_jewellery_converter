import '../src.dart';

/// A class representing gems in the Myanmar traditional measurement system,
/// extending the [MyanmarMass] class.
class MyanmarGem extends MyanmarMass {
  final double carat;

  /// Constructs a [MyanmarGem] object with the given carat weight.
  /// The total mass in Yawe is calculated based on the carat weight.
  const MyanmarGem._internal(this.carat) : super(yawe: carat * _yawesPerCarat);

  /// Constructs a [MyanmarGem] object with the given Yati and carat weights.
  /// The Yati weight is converted to carat and added to the provided carat weight
  /// to determine the total carat weight.
  factory MyanmarGem({double yati = 0, double carat = 0}) {
    return MyanmarGem._internal((yati / _yatisPerCarat) + carat);
  }

  /// Constructs a [MyanmarGem] object from the given Yati weight.
  factory MyanmarGem.fromYati(double yati) {
    return MyanmarGem(yati: yati);
  }

  /// Constructs a [MyanmarGem] object from the given carat weight.
  factory MyanmarGem.fromCarat(double carat) {
    return MyanmarGem(carat: carat);
  }

  /// Conversion factor from Yatis to Carats.
  static const double _yatisPerCarat = 1.1;

  /// Conversion factor from Carats to Yawe.
  static const double _yawesPerCarat = 1.54;

  /// Gets the weight of the gem in Yatis.
  double get asYati => carat * _yatisPerCarat;

  /// Gets the weight of the gem in Carats.
  double get asCarat => carat;

  /// Calculates the price of the gem based on the price per one Yati.
  double calculateGemPriceByYati(double pricePerOneYati) {
    return asYati * pricePerOneYati;
  }

  /// Calculates the price of the gem based on the price per one Carat.
  double calculateGemPriceByCarat(double pricePerOneCarat) {
    return asCarat * pricePerOneCarat;
  }
}