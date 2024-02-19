class MyanmarMass {
  final double _totalYawe;

  /// Return rounded <u><b>Kyat</b></u> unit.
  /// If you want float representation of this object
  /// use [asKyats] getter
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.kyat) //2
  /// ```
  int get kyat => _totalYawe ~/ _yawesPerKyat;
  
  /// Return rounded <u><b>Pae</b></u> unit.
  /// If you want float representation of this object
  /// use [asPaes] getter
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.pae) //35
  /// ```
  int get pae => (_totalYawe - (kyat * _yawesPerKyat)) ~/ _yawesPerPae;

  /// Return rounded <u><b>Pae</b></u> unit.
  /// If you want float representation of this object
  /// use [asYawes] getter
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.yawe) //284
  /// ```
  double get yawe => _totalYawe - (kyat * _yawesPerKyat) - (pae * _yawesPerPae);

  /// Creates a new [MyanmarMass] object whose value
  /// is the sum of all individual parts.
  /// 
  /// Individual parts can be larger than the number of those
  /// parts in the next larger unit.
  /// For example, [pae] can be greater than 16.
  /// If this happens, the value overflows into the next larger
  /// unit, so 19 [pae] is the same as 3 [pae] and
  /// one more [kyat].
  /// Likewise, values can be negative, in which case they
  /// underflow and subtract from the next larger unit.
  ///
  /// All arguments are 0 by default.
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass); // MyanmarMass(kyat: 2, pae: 3, yawe: 4.0)
  /// ```
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

  /// Creates a [MyanmarMass] object from the total Yawes value.
  const MyanmarMass.fromYawe(double yawes) : _totalYawe = yawes;

  /// Creates a [MyanmarMass] object from the total Paes value.
  const MyanmarMass.fromPae(double paes) : _totalYawe = paes * _yawesPerPae;

  /// Creates a [MyanmarMass] object from the total Kyats value.
  const MyanmarMass.fromKyat(double kyats) : _totalYawe = kyats * _yawesPerKyat;

  /// Creates a [MyanmarMass] object from the total Muu value.
  const MyanmarMass.fromMuu(double muu) : _totalYawe = muu * _yawesPerMuu;

  /// Creates a [MyanmarMass] object from the total Matt value.
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

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Kyats</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asKyats) //2.21875
  /// ```
  double get asKyats => kyat + (pae / _paesPerKyat) + (yawe / _yawesPerKyat);

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Paes</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asPaes) //35.5
  /// ```
  double get asPaes => (kyat * _paesPerKyat) + pae + (yawe / _yawesPerPae);

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Yawes</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asYawes) //284.0
  /// ```
  double get asYawes => (kyat * _yawesPerKyat) + (pae * _yawesPerPae) + yawe;

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Grams</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asGrams) //36.831250000000004
  /// ```
  double get asGrams => asKyats * _gramsPerKyat;

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Grams</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asKilograms) //0.03683125
  /// ```
  double get asKilograms => asGrams / _gramsPerKilograms;

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Ounces</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asOunces) //1.2991851708143003
  /// ```
  double get asOunces => asGrams / _gramsPerOunce;

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Pounds</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asPounds) //0.08119907317589377
  /// ```
  double get asPounds => asOunces / _ouncesPerPound;

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Matt</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asMatt) //8.875
  /// ```
  double get asMatt => _totalYawe / _yawesPermMatt;

  /// Returns the total of each inidvidual parts
  /// converted as <u><b>Muu</b></u>
  /// For example
  /// ```dart
  /// final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);
  /// print(mass.asMuu) //22.1875
  /// ```
  double get asMuu => _totalYawe / _yawesPerMuu;

  /// Calculates the total price based on the price per one Kyat.
  double calculatePrice(double pricePerOneKyat) {
    return asKyats * pricePerOneKyat;
  }

  @override
  String toString() {
    return "MyanmarMass(kyat: $kyat, pae: $pae, yawe: $yawe)";
  }

  /// Returns a string containing details of the mass in different units.
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
