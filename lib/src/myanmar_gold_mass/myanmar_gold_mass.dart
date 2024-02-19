import '../src.dart';

class MyanmarGoldMass {
  final GoldState state;
  final MyanmarMass mass;

  const MyanmarGoldMass({
    required this.state,
    required this.mass,
  });

  MyanmarGoldMass covertGoldState(GoldState newState) {
    return MyanmarGoldMass(
      state: newState,
      mass: (mass / state.denominator) * newState.denominator,
    );
  }

  MyanmarGoldMass as16PaeYayGoldState() {
    return covertGoldState(GoldStates.A0);
  }
}
