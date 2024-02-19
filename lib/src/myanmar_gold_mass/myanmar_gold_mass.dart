import '../src.dart';

/// A class representing the mass of gold in the Myanmar traditional measurement system.
class MyanmarGoldMass {
  /// The state info of gold.
  final GoldStateInfo state;

  /// The mass of gold.
  final MyanmarMass mass;

  /// Constructs a [MyanmarGoldMass] object with the specified parameters.
  const MyanmarGoldMass({
    required this.state,
    required this.mass,
  });

  /// Converts the gold state of the mass to a new state.
  /// Returns a new [MyanmarGoldMass] object with the updated state and adjusted mass.
  MyanmarGoldMass covertGoldState(GoldStateInfo newState) {
    return MyanmarGoldMass(
      state: newState,
      mass: (mass / state.denominator) * newState.denominator,
    );
  }

  /// Converts the gold state of the mass to 16 Pae Yay gold state.
  /// Returns a new [MyanmarGoldMass] object with the updated state and adjusted mass.
  MyanmarGoldMass as16PaeYayGoldState() {
    return covertGoldState(GoldStates.A0);
  }
}