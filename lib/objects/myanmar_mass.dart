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
    num muu = 0,
    num matt = 0,
  }) : _totalYawe = (kyat * _yawesPerKyat) +
            (pae * _yawesPerPae) +
            yawe +
            (muu * _yawesPerMuu) +
            (matt * _yawesPermMatt);

  const MyanmarMass.fromYawe(double yawes) : _totalYawe = yawes;

  const MyanmarMass.fromPae(double paes) : _totalYawe = paes * _yawesPerPae;

  const MyanmarMass.fromKyat(double kyats) : _totalYawe = kyats * _yawesPerKyat;

  const MyanmarMass.fromMuu(double muu) : _totalYawe = muu * _yawesPerMuu;

  const MyanmarMass.fromMatt(double matt) : _totalYawe = matt * _yawesPermMatt;

  static const double _yawesPerPae = 8;
  static const double _paesPerKyat = 16;
  static const double _yawesPerKyat = _yawesPerPae * _paesPerKyat;
  static const double _gramsPerKyat = 16.6;

  static const double _yawesPerMuu = 12.8;
  static const double _muuPerMatt = 2.5;
  static const double _yawesPermMatt = _yawesPerMuu * _muuPerMatt;

  static const double _gramsPerKilograms = 1000.0;

  static const double _gramsPerOunce = 28.3495;
  static const double _ouncesPerPound = 16.0;

  MyanmarMass operator *(covariant double product) {
    return MyanmarMass.fromYawe(_totalYawe * product);
  }

  MyanmarMass operator /(covariant double divider) {
    return MyanmarMass.fromYawe(_totalYawe / divider);
  }

  MyanmarMass operator +(covariant MyanmarMass other) {
    return MyanmarMass.fromYawe(_totalYawe + other.asYawes);
  }

  MyanmarMass operator -(covariant MyanmarMass other) {
    return MyanmarMass.fromYawe(_totalYawe - other.asYawes);
  }

  double get asKyats => kyat + (pae / _paesPerKyat) + (yawe / _yawesPerKyat);

  double get asPaes => (kyat * _paesPerKyat) + pae + (yawe / _yawesPerPae);

  double get asYawes => (kyat * _yawesPerKyat) + (pae * _yawesPerPae) + yawe;

  double get asGrams => asKyats * _gramsPerKyat;

  double get asKilograms => asGrams / _gramsPerKilograms;

  double get asOunces => asGrams / _gramsPerOunce;

  double get asPounds => asOunces / _ouncesPerPound;

  double get asMatt => _totalYawe / _yawesPermMatt;

  double get asMuu => _totalYawe / _yawesPerMuu;

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
As Kyats: $asKyats,
As Paes: $asPaes,
As Yawes: $asYawes,
As Muu: $asMuu,
As Matt: $asMatt,
As Grams: $asGrams,
As Kilograms: $asKilograms,
As Ounces: $asOunces,
As Pounds: $asPounds,
""";
  }
}
