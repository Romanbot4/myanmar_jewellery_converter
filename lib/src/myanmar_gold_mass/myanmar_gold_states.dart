// | Variable | StateID | Numerator | Denominator | StateName        |
// |----------|---------|-----------|-------------|------------------|
// | A0       | A0      | 16        | 16          | 16ပဲရည်           |
// | AC       | AC      | 16        | 16          | 16ပဲရည် (AC)      |
// | B0       | B0      | 15        | 17          | 15ပဲရည်           |
// | C0       | C0      | 14        | 18          | 14ပဲရည်           |
// | C1       | C1      | 14.4      | 17.5        | 14 ပဲ 4 ရွေး       |
// | D0       | D0      | 13        | 19          | 13ပဲရည်           |
// | E0       | E0      | 12        | 20          | 18K              |
// | E1       | E1      | 12.4      | 19.5        | 12 ပဲ 4 ရွေး       |
// | E2       | E2      | 12        | 20          | 750 (18K)        |
// | E3       | E3      | 12        | 20          | rose             |
// | ET       | ET      | 12        | 20          | 18K              |
// | F0       | F0      | 11        | 21          | 11ပဲရည်           |
// | F1       | F1      | 11.4      | 20.5        | 11 ပဲ 4 ရွေး       |
// | G0       | G0      | 10        | 22          | 10ပဲရည်           |
// | G1       | G1      | 10.4      | 21.5        | 10 ပဲ 4 ရွေး       |
// | H0       | H0      | 9         | 23          | 9ပဲရည်            |
// | H1       | H1      | 9.4       | 22.5        | 9 ပဲ 4 ရွေး        |
// | I0       | I0      | 8         | 24          | 8ပဲရည်            |
// | I1       | I1      | 8.4       | 23.5        | 8 ပဲ 4 ရွေး        |
// | JO       | JO      | 0         | 0           | Jade             |
// | P4       | P4      | 9.4       | 22.5        | ပလက်တီနမ် (14K)  |
// | P8       | P8      | 12        | 20          | ပလက်တီနမ် (18K)  |

// ignore_for_file: constant_identifier_names

import 'myanmar_gold_state.dart';

abstract class GoldStates {
  static const GoldState A0 = GoldState(
    id: "A0",
    name: "16ပဲရည်",
    numerator: 16,
    denominator: 16,
  );
  static const GoldState AC = GoldState(
    id: "AC",
    name: "16ပဲရည်(AC)",
    numerator: 16,
    denominator: 16,
  );
  static const GoldState B0 = GoldState(
    id: "B0",
    name: "15ပဲရည်",
    numerator: 15,
    denominator: 17,
  );
  static const GoldState C0 = GoldState(
    id: "C0",
    name: "14ပဲရည်",
    numerator: 14,
    denominator: 18,
  );
  static const GoldState C1 = GoldState(
    id: "C1",
    name: "14 ပဲ 4 ရွေး",
    numerator: 14.4,
    denominator: 17.5,
  );
  static const GoldState D0 = GoldState(
    id: "D0",
    name: "13ပဲရည်",
    numerator: 13,
    denominator: 19,
  );
  static const GoldState E0 = GoldState(
    id: "E0",
    name: "18K",
    numerator: 12,
    denominator: 20,
  );
  static const GoldState E1 = GoldState(
    id: "E1",
    name: "12 ပဲ 4 ရွေး",
    numerator: 12.4,
    denominator: 19.5,
  );
  static const GoldState E2 = GoldState(
    id: "E2",
    name: "750 (18K)",
    numerator: 12,
    denominator: 20,
  );
  static const GoldState E3 = GoldState(
    id: "E3",
    name: "rose",
    numerator: 12,
    denominator: 20,
  );
  static const GoldState ET = GoldState(
    id: "ET",
    name: "18K",
    numerator: 12,
    denominator: 20,
  );
  static const GoldState F0 = GoldState(
    id: "F0",
    name: "11ပဲရည်",
    numerator: 11,
    denominator: 21,
  );
  static const GoldState F1 = GoldState(
    id: "F1",
    name: "11 ပဲ 4 ရွေး",
    numerator: 11.4,
    denominator: 20.5,
  );
  static const GoldState G0 = GoldState(
    id: "G0",
    name: "10ပဲရည်",
    numerator: 10,
    denominator: 22,
  );
  static const GoldState G1 = GoldState(
    id: "G1",
    name: "10 ပဲ 4 ရွေး",
    numerator: 10.4,
    denominator: 21.5,
  );
  static const GoldState H0 = GoldState(
    id: "H0",
    name: "9ပဲရည်",
    numerator: 9,
    denominator: 23,
  );
  static const GoldState H1 = GoldState(
    id: "H1",
    name: "9 ပဲ 4 ရွေး",
    numerator: 9.4,
    denominator: 22.5,
  );
  static const GoldState I0 = GoldState(
    id: "I0",
    name: "8ပဲရည်",
    numerator: 8,
    denominator: 24,
  );
  static const GoldState I1 = GoldState(
    id: "I1",
    name: "8 ပဲ 4 ရွေး",
    numerator: 8.4,
    denominator: 23.5,
  );
  static const GoldState JO = GoldState(
    id: "JO",
    name: "Jade",
    numerator: 0,
    denominator: 0,
  );
  static const GoldState P4 = GoldState(
    id: "P4",
    name: "ပလက်တီနမ် (14K)",
    numerator: 9.4,
    denominator: 22.5,
  );
  static const GoldState P8 = GoldState(
    id: "P8",
    name: "ပလက်တီနမ် (18K)",
    numerator: 12,
    denominator: 20,
  );

  static const List<GoldState> values = [
    A0,
    AC,
    B0,
    C0,
    C1,
    D0,
    E0,
    E1,
    E2,
    E3,
    ET,
    F0,
    F1,
    G0,
    G1,
    H0,
    H1,
    I0,
    I1,
    JO,
    P4,
    P8,
  ];
}
