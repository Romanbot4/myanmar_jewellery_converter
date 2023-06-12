import 'package:myanmar_jewellery_converter/myanmar_jewellery_converter.dart';

class MyanmarMass {
  final double _totalYawe;

  int get kyat => _totalYawe ~/ _yawesPerKyat;
  int get pae => (_totalYawe - (kyat * _yawesPerKyat)) ~/ _yawesPerPae;
  double get yawe => _totalYawe - (kyat * _yawesPerKyat) - (pae * _yawesPerPae);

  const MyanmarMass({
    num kyat = 0,
    num pae = 0,
    num yawe = 0,
  }) : _totalYawe = (kyat * _yawesPerKyat) + (pae * _yawesPerPae) + yawe;

  const MyanmarMass.fromYawe(double yawes) : _totalYawe = yawes;

  const MyanmarMass.fromPae(double paes) : _totalYawe = paes * _yawesPerPae;

  const MyanmarMass.fromKyat(double kyats) : _totalYawe = kyats * _yawesPerKyat;

  static const double _yawesPerPae = 8;
  static const double _paesPerKyat = 16;
  static const double _yawesPerKyat = _yawesPerPae * _paesPerKyat;
  static const double _gramsPerKyat = 16.6;

  MyanmarMass operator *(covariant double product) {
    return MyanmarMass.fromYawe(product * yawe);
  }

  MyanmarMass operator /(covariant double divider) {
    return MyanmarMass.fromYawe(yawe / divider);
  }

  MyanmarMass operator +(covariant MyanmarMass other) {
    return MyanmarMass.fromYawe(yawe + other.yawe);
  }

  double get asKyats => kyat + (pae / _paesPerKyat) + (yawe / _yawesPerKyat);

  double get asPaes => (kyat * _paesPerKyat) + pae + (yawe / _yawesPerPae);

  double get asYawes => (kyat * _yawesPerKyat) + (pae * _yawesPerPae) + yawe;

  double get asGrams => asKyats * _gramsPerKyat;

  double calculatePriceByKyat(double pricePerOneKyat) {
    return asKyats * pricePerOneKyat;
  }

  MyanmarMass changeGoldState(GoldState original, GoldState change) {
    return (this / original.denominator) * change.denominator;
  }

  MyanmarMass as16GoldState(GoldState original) {
    return changeGoldState(original, GoldStateConstants.A0);
  }

  @override
  String toString() {
    return "MyanmarMass(kyat: $kyat, pae: $pae, yawe: $yawe)";
  }

  String get detailsString {
    return """
MyanmarMass(kyat: $kyat, pae: $pae, yawe: $yawe)
As grams: $asGrams,
As Kyats: $asKyats,
As Paes: $asPaes,
As Yawes: $asYawes,
""";
  }
}
