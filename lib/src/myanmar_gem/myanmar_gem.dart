import '../src.dart';

class MyanmarGem extends MyanmarMass {
  final double carat;

  const MyanmarGem._internal(this.carat) : super(yawe: carat * _yawesPerCarat);

  factory MyanmarGem({double yati = 0, double carat = 0}) {
    return MyanmarGem._internal((yati / _yatisPerCarat) + carat);
  }

  factory MyanmarGem.fromYati(double yati) {
    return MyanmarGem(yati: yati);
  }

  factory MyanmarGem.fromCarat(double carat) {
    return MyanmarGem(carat: carat);
  }

  static const double _yatisPerCarat = 1.1;

  static const double _yawesPerCarat = 1.54;

  double get asYati => carat * _yatisPerCarat;
  double get asCarat => carat;

  double calculateGemPriceByYati(double pricePerOneYati) {
    return asYati * pricePerOneYati;
  }

  double calculateGemPriceByCarat(double pricePerOneCarat) {
    return asCarat * pricePerOneCarat;
  }
}
