## Myanmar Jewellery Converter

### Introduction
This library provides functionalities to manipulate and convert mass measurements in the Myanmar traditional measurement system. It includes classes for representing mass units and gold states, as well as methods for conversion between different units.

### MyanmarMass
- Represents a unit of mass in the Myanmar traditional measurement system.
- Provides methods for conversion between Kyat, Pae, and Yawe units, as well as to standard metric units like grams, kilograms, ounces, and pounds.
- Supports arithmetic operations such as multiplication, division, addition, and subtraction.

### GoldStateInfo
- Represents information about different states of gold, including ID, name, numerator, and denominator.
- Allows conversion from a map for easy data initialization.
- Provides a string representation for debugging and logging.

### GoldStates
- An abstract class containing static constants for various gold states, such as A0, AC, B0, etc.
- Provides a list of all gold states for easy access and iteration.

| StateID | StateName       |
|---------|-----------------|
| A0      | 16ပဲရည်       |
| AC      | 16ပဲရည် (AC) |
| B0      | 15ပဲရည်       |
| C0      | 14ပဲရည်       |
| C1      | 14 ပဲ 4 ရွေး |
| D0      | 13ပဲရည်       |
| E0      | 18K             |
| E1      | 12 ပဲ 4 ရွေး |
| E2      | 750 (18K)       |
| E3      | rose            |
| ET      | 18K             |
| F0      | 11ပဲရည်       |
| F1      | 11 ပဲ 4 ရွေး |
| G0      | 10ပဲရည်       |
| G1      | 10 ပဲ 4 ရွေး |
| H0      | 9ပဲရည်        |
| H1      | 9 ပဲ 4 ရွေး   |
| I0      | 8ပဲရည်        |
| I1      | 8 ပဲ 4 ရွေး   |
| JO      | Jade            |
| P4      | ပလက်တီနမ် (14K) |
| P8      | ပလက်တီနမ် (18K) |

### MyanmarGoldMass
- Represents the mass of gold in the Myanmar traditional measurement system.
- Combines a GoldStateInfo object with a MyanmarMass object to represent the state and mass of gold together.
- Provides methods to convert the gold state of the mass to different states.

## Functionalities
- Conversion between different units of mass in the Myanmar traditional system.
- Conversion between Myanmar mass units and standard metric units.
- Conversion between different states of gold.
- Arithmetic operations on mass objects.
- Initialization of gold state information from a map.
- Easy access to predefined gold state constants.

## Example Usage
```dart
// Create a MyanmarMass object
final mass = MyanmarMass(kyat: 2, pae: 3, yawe: 4);

// Convert mass to grams
final grams = mass.asGrams;

// Create a MyanmarGoldMass object
final goldMass = MyanmarGoldMass(state: GoldStates.A0, mass: mass);

// Convert gold state to 16 Pae Yay gold state
final new16PaeYayGoldMass = goldMass.as16PaeYayGoldState();

// Convert gold state from 16 Pae Yay to any gold State  gold state (e.g: 8 Pae Yay)
final new8PaeYayGoldMass = goldMass.covertGoldState(GoldStates.I0);
```
## Caution
While this library aims to accurately represent mass measurements, it's important to note that the correctness of the calculations may vary based on factors such as implementation details, rounding errors, and variations in measurement standards.
Therefore, it's recommended that users thoroughly test the library in their specific use cases before relying on it for commercial production purposes. Community testing and contributions over time can help improve the accuracy and reliability of the library.

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.

## License
This project is licensed under the MIT License.

Enjoy coding! 🍔🍕🚀