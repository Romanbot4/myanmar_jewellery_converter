/// A class representing information about different states of gold.
class GoldStateInfo {
  /// The unique identifier of the gold state.
  final String id;

  /// The name of the gold state.
  final String name;

  /// The numerator value of the gold state.
  final double numerator;

  /// The denominator value of the gold state.
  final double denominator;

  /// Constructs a [GoldStateInfo] object with the specified parameters.
  const GoldStateInfo({
    required this.id,
    required this.name,
    required this.numerator,
    required this.denominator,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        numerator.hashCode ^
        denominator.hashCode;
  }

  @override
  bool operator ==(covariant GoldStateInfo other) {
    return other.hashCode == hashCode;
  }
}