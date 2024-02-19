class GoldState {
  final String id;
  final String name;
  final double numerator;
  final double denominator;

  const GoldState({
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
  bool operator ==(covariant GoldState other) {
    return other.hashCode == hashCode;
  }
}